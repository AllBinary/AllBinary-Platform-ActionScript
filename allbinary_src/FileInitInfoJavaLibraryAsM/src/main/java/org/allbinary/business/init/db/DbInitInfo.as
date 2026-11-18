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
package org.allbinary.business.init.db {
    import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.communication.http.HttpData;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.io.AbDataInputStream;
    import org.allbinary.logic.io.AbDataOutputStream;
    import org.allbinary.logic.io.AbFileInputStream;
    import org.allbinary.logic.io.DataOutputStreamFactory;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.directory.Directory;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.crypt.DatabaseEncoder;
    import org.allbinary.logic.system.security.crypt.WeakCrypt;
    import org.allbinary.string.CommonStrings;

    public class DbInitInfo extends DbConnectionInfo {
        private var commonStrings:CommonStrings = null;
        private var directory:Directory = null;
        private var httpData:HttpData = null;
        private var GET_URL:String = null;
        private var PACKAGE:String = null;
        private var initFileName:String = null;
        private var hasRead:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsDbInitInfo():void {
    this.commonStrings = CommonStrings.getInstance();
    this.directory = Directory.getInstance();
    this.httpData = HttpData.getInstance();
    this.GET_URL = "getUrl";
    this.PACKAGE = FREEBLISKET_PATH_GLOBALS.getInstance().DBINITPATH;
    
    this.hasRead = false;
        }
    

    public function DbInitInfo(initFileName:String, read:Boolean) {
        super();
        this.initFieldsDbInitInfo();
        this.initFileName = initFileName;
        if (read) {
            this.updateIfNeeded();
        } else {
            this.setHasRead(true);
        }
    }
    

    override public function getUrl():String {
        var url:String = super.getUrl();
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
            PreLogUtil.put(this.httpData.URL_LABEL + url, this, this.GET_URL);
        }
        return url;
    }
    

    public function write():void {
        var PATH:AbPath = new AbPath(URLGLOBALS.getWebappPath() + this.PACKAGE, StringUtil.getInstance().EMPTY_STRING);
        this.directory.create(PATH);
        var FILEABPATH:AbPath = new AbPath(URLGLOBALS.getWebappPath() + this.PACKAGE, this.initFileName);
        try {
            var newFile:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
            newFile.createNewFile();
            var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile);
            try {
                var cryptedJdbcDriver:Vector.<int> = new WeakCrypt(1).encrypt(this.getJdbcDriver()).getBytes();
                var cryptedName:Vector.<int> = new WeakCrypt(2).encrypt(this.getName()).getBytes();
                var cryptedUserName:Vector.<int> = new WeakCrypt(3).encrypt(this.getUserName()).getBytes();
                var cryptedPassword:Vector.<int> = new WeakCrypt(4).encrypt(this.getPassword()).getBytes();
                var cryptedSchema:Vector.<int> = new WeakCrypt(5).encrypt(this.getSchema()).getBytes();
                var cryptedServer:Vector.<int> = new WeakCrypt(6).encrypt(this.getServer()).getBytes();
                var cryptedPort:Vector.<int> = new WeakCrypt(7).encrypt(this.getPort()).getBytes();
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedJdbcDriver));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedName));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedUserName));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedPassword));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedSchema));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedServer));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedPort));
                this.hasRead = false;
            } finally {
                StreamUtil.getInstance().close(dataOutputStream);
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE("Failed Write: " + FILEABPATH.toString(), this, "write", e);
            }
        }
    }
    

    private function load():void {
        var FILEABPATH:AbPath = new AbPath(URLGLOBALS.getWebappPath() + this.PACKAGE, this.initFileName);
        try {
            var file:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
            if (file.isFile()) {
                var iFile:AbFileInputStream = AbFileInputStream.createFromAbFile(file);
                var iData:AbDataInputStream = new AbDataInputStream(iFile);
                try {
                    var decryptedJdbcDriver:String = DatabaseEncoder.decode(iData.readUTF());
                    var decryptedName:String = DatabaseEncoder.decode(iData.readUTF());
                    var decryptedUserName:String = DatabaseEncoder.decode(iData.readUTF());
                    var decryptedPassword:String = DatabaseEncoder.decode(iData.readUTF());
                    var decryptedSchema:String = DatabaseEncoder.decode(iData.readUTF());
                    var decryptedServer:String = DatabaseEncoder.decode(iData.readUTF());
                    var decryptedPort:String = DatabaseEncoder.decode(iData.readUTF());
                    this.setJdbcDriver(new WeakCrypt(1).decrypt(decryptedJdbcDriver));
                    this.setName(new WeakCrypt(2).decrypt(decryptedName));
                    this.setUserName(new WeakCrypt(3).decrypt(decryptedUserName));
                    this.setPassword(new WeakCrypt(4).decrypt(decryptedPassword));
                    this.setSchema(new WeakCrypt(5).decrypt(decryptedSchema));
                    this.setServer(new WeakCrypt(6).decrypt(decryptedServer));
                    this.setPort(new WeakCrypt(7).decrypt(decryptedPort));
                    var stringUtil:StringUtil = StringUtil.getInstance();
                } finally {
                    StreamUtil.getInstance().close(iData);
                }
            } else {
                this.hasRead = false;
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
                    PreLogUtil.put("Not a File - Failed Loading: " + FILEABPATH.toString(), this, this.commonStrings.LOAD);
                }
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE("Failed Loading: " + FILEABPATH.toString(), this, this.commonStrings.LOAD, e);
            }
        }
    }
    

    public function setHasRead(value:Boolean):void {
        this.hasRead = value;
    }
    

    private function updateIfNeeded():void {
        try {
            if (!this.hasRead) {
                this.hasRead = true;
                this.load();
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, "updateIfNeeded", e);
            }
        }
    }
    

    override public function getName():String {
        this.updateIfNeeded();
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
            PreLogUtil.put("Name: " + super.getName(), this, "getName");
        }
        return super.getName();
    }
    

    override public function getUserName():String {
        this.updateIfNeeded();
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
            PreLogUtil.put("Name: " + String(super.getUserName()), this, "getUserName");
        }
        return super.getUserName();
    }
    

    override public function getPassword():String {
        this.updateIfNeeded();
        return super.getPassword();
    }
    

    override public function getSchema():String {
        this.updateIfNeeded();
        return super.getSchema();
    }
    

    override public function getServer():String {
        this.updateIfNeeded();
        return super.getServer();
    }
    

    override public function getPort():String {
        this.updateIfNeeded();
        return super.getPort();
    }
    }
}

