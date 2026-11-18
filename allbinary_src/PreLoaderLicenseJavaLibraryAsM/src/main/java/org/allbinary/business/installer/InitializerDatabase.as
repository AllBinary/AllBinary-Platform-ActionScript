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
package org.allbinary.business.installer {
    import java.util.JHashMap;
    import java.util.JMap;
    import java.util.JSet;
    import org.allbinary.business.init.db.DatabaseConnectionInfoInterface;
    import org.allbinary.business.init.db.DbConnectionInfo;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonStrings;

    public class InitializerDatabase {
    private static const MAXDB:int = 30;
    private static const MAX:int = 16;
    private static const MIN:int = 4;
    private static const MINPASSWORD:int = 0;
        public var logUtil:LogUtil = null;
        private var adminDbUserName:String = null;
        private var adminDbPassword:String = null;
        private var adminJdbcDriver:String = null;
        private var adminSchema:String = null;
        private var adminServer:String = null;
        private var adminPort:String = null;
        private var initDb:DynamicInitDb = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitializerDatabase():void {
    this.logUtil = LogUtil.getInstance();
    this.adminDbUserName = null;
    this.adminDbPassword = null;
    this.adminJdbcDriver = null;
    this.adminSchema = null;
    this.adminServer = null;
    this.adminPort = null;
    this.initDb = null;
        }
    

    public function InitializerDatabase(abeClientInformation:AbeClientInformationInterface, map:Map) {
        super();
        this.initFieldsInitializerDatabase();
        var stringBuffer:StringMaker = new StringMaker();
        var hashMap:JHashMap = StdUtil.getInstance().createHashMap();
        var keys:Set = map.keySet();
        var keyArray:Vector.<Object> = keys.toArray();
        var size:int = keyArray.length;
        for (var index:int = 0; index < size; index++) {
            var key:String = (keyArray[index] as String);
            var values:Vector.<String> = (map.get_(key) as Vector.<String>);
            hashMap.put(key, values[0]);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append("key: ");
            stringBuffer.append(key);
            stringBuffer.append(" Value: ");
            stringBuffer.append(values[0]);
            this.logUtil.putF(stringBuffer.toString(), this, "getFormData()");
        }
        this.getFormData(abeClientInformation, hashMap);
    }
    

    /* Java constructor: ActionScript classes have one constructor
    public function InitializerDatabase(abeClientInformation:AbeClientInformationInterface, initHashMap:JHashMap) {
        super();
        this.initFieldsInitializerDatabase();
        this.getFormData(abeClientInformation, initHashMap);
    }
    */
    

    public function getFormData(abeClientInformation:AbeClientInformationInterface, hashMap:JHashMap):void {
        try {
            var initializerData:InitializerData = InitializerData.getInstance();
            this.setAdminDbUserName((hashMap.get_(initializerData.DBUSER) as String));
            this.setAdminDbPassword((hashMap.get_(initializerData.DBPASSWORD) as String));
            this.setAdminJdbcDriver((hashMap.get_(initializerData.ADMINJDBCDRIVER) as String));
            this.setAdminSchema((hashMap.get_(initializerData.ADMINSCHEMA) as String));
            this.setAdminServer((hashMap.get_(initializerData.ADMINSERVER) as String));
            this.setAdminPort((hashMap.get_(initializerData.ADMINPORT) as String));
            var dbConnectionInfo:DbConnectionInfo = new DbConnectionInfo();
            var adminDbName:String = StringUtil.getInstance().EMPTY_STRING;
            dbConnectionInfo.setJdbcDriver(this.getAdminJdbcDriver());
            dbConnectionInfo.setName(adminDbName);
            dbConnectionInfo.setUserName(this.getAdminDbUserName());
            dbConnectionInfo.setPassword(this.getAdminDbPassword());
            dbConnectionInfo.setSchema(this.getAdminSchema());
            dbConnectionInfo.setServer(this.getAdminServer());
            dbConnectionInfo.setPort(this.getAdminPort());
            this.initDb = new DynamicInitDb(abeClientInformation, (dbConnectionInfo as DatabaseConnectionInfoInterface));
        } catch (e:*) {
            this.logUtil.put("Unable to get form data", this, "getFormData()", e);
        }
    }
    

    private function isJdbcDriverValid(jdbcDriverClassPathString:String):Boolean {
        try {
            Class.forName(jdbcDriverClassPathString).newInstance();
            return true;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.IS_VALID, e);
            }
            return false;
        }
    }
    

    public function isValid():Boolean {
        var isValid:Boolean = true;
        if (!this.isJdbcDriverValid(this.adminJdbcDriver)) {
            isValid = false;
        }
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isValidRequired(this.adminDbUserName, InitializerDatabase.MIN, InitializerDatabase.MAX)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidNotRequired(this.adminDbPassword, InitializerDatabase.MINPASSWORD, InitializerDatabase.MAX)) {
            isValid = false;
        }
        return isValid;
    }
    

    private function getJdbcDriverValidationInfo(jdbcDriver:String):String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("The JDBC driver (");
        stringBuffer.append(jdbcDriver);
        stringBuffer.append(") you have provided is not valid.<br/>");
        return stringBuffer.toString();
    }
    

    public function getInvalidInfo():String {
        var isValid:Boolean = true;
        var isJdbcDriversValid:Boolean = true;
        var stringBuffer:StringMaker = new StringMaker();
        if (!this.isJdbcDriverValid(this.adminJdbcDriver)) {
            isJdbcDriversValid = false;
            stringBuffer.append(this.getJdbcDriverValidationInfo(this.getAdminJdbcDriver()));
        }
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isValidRequired(this.adminDbUserName, InitializerDatabase.MIN, InitializerDatabase.MAX)) {
            stringBuffer.append("Admin username should be < " + String(InitializerDatabase.MAX) + " and > " + String(InitializerDatabase.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidNotRequired(this.adminDbPassword, InitializerDatabase.MINPASSWORD, InitializerDatabase.MAX)) {
            stringBuffer.append("Admin password should be < " + String(InitializerDatabase.MAX) + " and > " + String(InitializerDatabase.MINPASSWORD) + " characters in length.<br />");
        }
        if (!isJdbcDriversValid) {
            stringBuffer.append(InitializerData.getInstance().getJdbcDriverSolutionInfo());
        }
        return stringBuffer.toString();
    }
    

    public function createUsers():Boolean {
        try {
            this.initDb.addUsers();
            return true;
        } catch (e:*) {
            this.logUtil.put("Unable to Create Users", this, "createUsers()", e);
            return false;
        }
    }
    

    public function createDatabases():Boolean {
        try {
            this.initDb.addDatabases();
            return true;
        } catch (e:*) {
            this.logUtil.put("Unable to Create Databases", this, "createDatabases()", e);
            return false;
        }
    }
    

    public function createTables():Boolean {
        try {
            this.initDb.addTables();
            return true;
        } catch (e:*) {
            this.logUtil.put("Unable to Create Tables", this, "createTables()", e);
            return false;
        }
    }
    

    public function getAdminDbUserName():String {
        return this.adminDbUserName;
    }
    

    public function setAdminDbUserName(adminDbUserName:String):void {
        this.adminDbUserName = adminDbUserName;
    }
    

    public function getAdminDbPassword():String {
        return this.adminDbPassword;
    }
    

    public function setAdminDbPassword(adminDbPassword:String):void {
        this.adminDbPassword = adminDbPassword;
    }
    

    public function getAdminJdbcDriver():String {
        return this.adminJdbcDriver;
    }
    

    public function setAdminJdbcDriver(adminJdbcDriver:String):void {
        this.adminJdbcDriver = adminJdbcDriver;
    }
    

    public function getAdminSchema():String {
        return this.adminSchema;
    }
    

    public function setAdminSchema(adminSchema:String):void {
        this.adminSchema = adminSchema;
    }
    

    public function getAdminServer():String {
        return this.adminServer;
    }
    

    public function setAdminServer(adminServer:String):void {
        this.adminServer = adminServer;
    }
    

    public function getAdminPort():String {
        return this.adminPort;
    }
    

    public function setAdminPort(adminPort:String):void {
        this.adminPort = adminPort;
    }
    }
}

