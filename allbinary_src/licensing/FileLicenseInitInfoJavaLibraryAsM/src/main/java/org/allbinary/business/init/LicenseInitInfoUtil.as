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
    import org.allbinary.TsUtil;
    import org.allbinary.globals.PATH_GLOBALS;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.AbDataInputStream;
    import org.allbinary.logic.io.AbDataOutputStream;
    import org.allbinary.logic.io.AbFileInputStream;
    import org.allbinary.logic.io.DataOutputStreamFactory;
    import org.allbinary.logic.io.FileStreamFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.crypt.DatabaseEncoder;
    import org.allbinary.logic.system.security.crypt.WeakCrypt;
    import org.allbinary.string.CommonLabels;

    public class LicenseInitInfoUtil {
    private static var instance_value:LicenseInitInfoUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LicenseInitInfoUtil {
        if (!LicenseInitInfoUtil.instance_set) {
            LicenseInitInfoUtil.instance_set = true;
            LicenseInitInfoUtil.instance_value = new LicenseInitInfoUtil();
        }
        return LicenseInitInfoUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var stringUtil:StringUtil = null;
        public var INITFILENAME:String = null;
        public var ABOUT:String = null;
        public var PRIVACY_POLICY:String = null;
        private var filePath:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLicenseInitInfoUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.filePath = this.stringUtil.EMPTY_STRING;
        }

        public function LicenseInitInfoUtil() {
            super();
            this.initFieldsLicenseInitInfoUtil();
        }
    

    public static function getInstance():LicenseInitInfoUtil {
        return LicenseInitInfoUtil.instance;
    }
    

    public function setFilePath(filePath:String):void {
        this.filePath = filePath;
    }
    

    public function write(initData:LicenseInitInfo):void {
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH;
        }
        try {
            var tsUtil:TsUtil = TsUtil.getInstance();
            var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstance2(this.filePath, this.INITFILENAME);
            var licenseIdCrypted:Vector.<int> = tsUtil.getByteArray(new WeakCrypt(1).encrypt(initData.getLicenseId()));
            dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseIdCrypted));
            var numberOfLicenseServers:int = initData.getNumberOfServers();
            dataOutputStream.writeInt(numberOfLicenseServers);
            var licenseServerCrypted:Vector.<int> = null;
            for (var index:int = 0; index < numberOfLicenseServers; index++) {
                licenseServerCrypted = tsUtil.getByteArray(new WeakCrypt(3).encrypt(initData.getServer(index)));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseServerCrypted));
            }
        } catch (e:*) {
            this.logUtil.put("Command Failed: " + this.INITFILENAME, this, "write", e);
            FileStreamFactory.getInstance().delete_(this.filePath, this.INITFILENAME);
            throw e;
        }
    }
    

    public function read():LicenseInitInfo {
        return this.readAgain(0);
    }
    

    public function readAgain(initializeCounter:int):LicenseInitInfo {
        var METHOD_NAME:String = "readAgain";
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH;
        }
        try {
            this.logUtil.putF("LicenseInitInfo File: " + this.INITFILENAME, this, METHOD_NAME);
            var fileStreamFactory:FileStreamFactory = FileStreamFactory.getInstance();
            var iFile:AbFileInputStream = fileStreamFactory.getFileInputStreamInstance(this.filePath, this.INITFILENAME);
            if (iFile != null) {
                var iData:AbDataInputStream = new AbDataInputStream(iFile);
                var initInfo:LicenseInitInfo = new LicenseInitInfo();
                var decodedByteArray:Vector.<int> = DatabaseEncoder.decode(iData.readUTF());
                var licenseIdDecoded:String = decodedByteArray;
                initInfo.setLicenseId(new WeakCrypt(1).decrypt(licenseIdDecoded));
                var numberOfLicenseServers:int = iData.readInt();
                var NEXT_FILE:String = new StringMaker().append(CommonLabels.getInstance().NEXT).append(" License Server From File: ").toString();
                var licenseServerDecoded:String = null;
                for (var index:int = 0; index < numberOfLicenseServers; index++) {
                    decodedByteArray = DatabaseEncoder.decode(iData.readUTF());
                    licenseServerDecoded = decodedByteArray;
                    initInfo.setServer(new WeakCrypt(3).decrypt(licenseServerDecoded), index);
                    this.logUtil.putF(NEXT_FILE + initInfo.getServer(index), this, METHOD_NAME);
                }
                return initInfo;
            } else {
                throw new JException("Exception", "Could Not Load License InitInfo: " + this.INITFILENAME);
            }
        } catch (e:*) {
            try {
                this.logUtil.put("Command Failed: " + this.INITFILENAME, this, METHOD_NAME, e);
            } catch (e2:*) {
                this.logUtil.put("LicenseInitInfo Read Retry: " + this.INITFILENAME, this, "readAgain()", e2);
            }
            throw new JException("Exception", "LicenseInitInfo Read Error: " + this.INITFILENAME);
        }
    }
    

    public function getFilePath():String {
        return this.filePath;
    }
    }
}

