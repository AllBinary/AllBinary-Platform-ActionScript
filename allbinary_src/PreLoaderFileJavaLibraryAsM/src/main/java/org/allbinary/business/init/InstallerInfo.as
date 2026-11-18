/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
package org.allbinary.business.init {
    import org.allbinary.globals.PATH_GLOBALS;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.AbDataInputStream;
    import org.allbinary.logic.io.AbDataOutputStream;
    import org.allbinary.logic.io.AbFileLocalInputStream;
    import org.allbinary.logic.io.DataOutputStreamFactory;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.crypt.DatabaseEncoder;
    import org.allbinary.logic.system.security.crypt.WeakCrypt;

    public class InstallerInfo {
    private static var instance_value:InstallerInfo;
    private static var instance_set:Boolean = false;
    private static function get instance():InstallerInfo {
        if (!InstallerInfo.instance_set) {
            InstallerInfo.instance_set = true;
            InstallerInfo.instance_value = new InstallerInfo();
        }
        return InstallerInfo.instance_value;
    }
    private static const INITFILENAME:String = "installerdata.dat";
    private static var PACKAGE_value:String;
    private static var PACKAGE_set:Boolean = false;
    private static function get PACKAGE():String {
        if (!InstallerInfo.PACKAGE_set) {
            InstallerInfo.PACKAGE_set = true;
            InstallerInfo.PACKAGE_value = PATH_GLOBALS.getInstance().INIT_PATH;
        }
        return InstallerInfo.PACKAGE_value;
    }
    private static var userName_value:String;
    private static var userName_set:Boolean = false;
    private static function get userName():String {
        if (!InstallerInfo.userName_set) {
            InstallerInfo.userName_set = true;
            InstallerInfo.userName_value = StringUtil.getInstance().EMPTY_STRING;
        }
        return InstallerInfo.userName_value;
    }
    private static var password_value:String;
    private static var password_set:Boolean = false;
    private static function get password():String {
        if (!InstallerInfo.password_set) {
            InstallerInfo.password_set = true;
            InstallerInfo.password_value = StringUtil.getInstance().EMPTY_STRING;
        }
        return InstallerInfo.password_value;
    }
    private static var hasRead:Boolean = false;
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsInstallerInfo():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public function InstallerInfo() {
        super();
        this.initFieldsInstallerInfo();
    }
    

    public function write():void {
        var FILEABPATH:AbPath = new AbPath(URLGLOBALS.getMainPath() + InstallerInfo.PACKAGE, InstallerInfo.INITFILENAME);
        try {
            var newFile:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
            newFile.createNewFile();
            var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile);
            var cryptedUserName:Vector.<int> = new WeakCrypt(1).encrypt(this.getUserName()).getBytes();
            var cryptedPassword:Vector.<int> = new WeakCrypt(2).encrypt(this.getPassword()).getBytes();
            dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedUserName));
            dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedPassword));
            InstallerInfo.hasRead = false;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                this.logUtil.putF("Failed", this, "write");
            }
            throw e;
        }
    }
    

    private function read():void {
        var FILEABPATH:AbPath = new AbPath(URLGLOBALS.getMainPath() + InstallerInfo.PACKAGE, InstallerInfo.INITFILENAME);
        try {
            var file:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
            if (file.isFile()) {
                var iFile:AbFileLocalInputStream = new AbFileLocalInputStream(file);
                var iData:AbDataInputStream = new AbDataInputStream(iFile);
                var decryptedUserName:String = DatabaseEncoder.decode(iData.readUTF());
                var decryptedPassword:String = DatabaseEncoder.decode(iData.readUTF());
                this.setUserName(new WeakCrypt(1).decrypt(decryptedUserName));
                this.setPassword(new WeakCrypt(2).decrypt(decryptedPassword));
            } else {
                if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADER)) {
                    this.logUtil.putF("Not a File - Failed Loading: " + FILEABPATH.toString(), this, "read");
                }
            }
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                this.logUtil.putF("Failed", this, "read");
            }
        }
    }
    

    public static function setHasRead(value:Boolean):void {
        InstallerInfo.hasRead = value;
    }
    

    public function setUserName(userName:String):void {
        InstallerInfo.userName = userName;
    }
    

    public function setPassword(password:String):void {
        InstallerInfo.password = password;
    }
    

    private function updateIfNeeded():void {
        if (!InstallerInfo.hasRead) {
            InstallerInfo.hasRead = true;
            this.read();
            if (InstallerInfo.userName == null || InstallerInfo.password == null) {
                if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADER)) {
                    this.logUtil.putF("Failed", this, "updateIfNeeded");
                }
            }
        }
    }
    

    public function getUserName():String {
        this.updateIfNeeded();
        return InstallerInfo.userName;
    }
    

    public function getPassword():String {
        this.updateIfNeeded();
        return InstallerInfo.password;
    }
    

    public function isValid(userName:String, password:String):Boolean {
        this.updateIfNeeded();
        if (InstallerInfo.userName != null && JString.compareTo(InstallerInfo.userName, userName) == 0 && InstallerInfo.password != null && JString.compareTo(InstallerInfo.password, password) == 0) {
            return true;
        }
        return false;
    }
    }
}

