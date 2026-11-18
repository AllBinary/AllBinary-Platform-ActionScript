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
    import org.allbinary.business.init.db.HistoryDbInitInfo;
    import org.allbinary.business.init.db.InventoryDbInitInfo;
    import org.allbinary.business.init.db.LogDbInitInfo;
    import org.allbinary.business.init.db.StaticPagesDbInitInfo;
    import org.allbinary.business.init.db.UserDbInitInfo;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.string.CommonStrings;

    public class Initializer {
    private static const MAXDB:int = 30;
    private static const MAX:int = 16;
    private static const MIN:int = 4;
    private static const MINPASSWORD:int = 0;
        public var logUtil:LogUtil = null;
        private var userJdbcDriver:String = null;
        private var userName:String = null;
        private var userUserName:String = null;
        private var userPassword:String = null;
        private var userSchema:String = null;
        private var userServer:String = null;
        private var userPort:String = null;
        private var historyJdbcDriver:String = null;
        private var historyName:String = null;
        private var historyUserName:String = null;
        private var historyPassword:String = null;
        private var historySchema:String = null;
        private var historyServer:String = null;
        private var historyPort:String = null;
        private var logJdbcDriver:String = null;
        private var logName:String = null;
        private var logUserName:String = null;
        private var logPassword:String = null;
        private var logSchema:String = null;
        private var logServer:String = null;
        private var logPort:String = null;
        private var inventoryJdbcDriver:String = null;
        private var inventoryName:String = null;
        private var inventoryUserName:String = null;
        private var inventoryPassword:String = null;
        private var inventorySchema:String = null;
        private var inventoryServer:String = null;
        private var inventoryPort:String = null;
        private var staticPagesJdbcDriver:String = null;
        private var staticPagesName:String = null;
        private var staticPagesUserName:String = null;
        private var staticPagesPassword:String = null;
        private var staticPagesSchema:String = null;
        private var staticPagesServer:String = null;
        private var staticPagesPort:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitializer():void {
    this.logUtil = LogUtil.getInstance();
    this.userJdbcDriver = null;
    this.userName = null;
    this.userUserName = null;
    this.userPassword = null;
    this.userSchema = null;
    this.userServer = null;
    this.userPort = null;
    this.historyJdbcDriver = null;
    this.historyName = null;
    this.historyUserName = null;
    this.historyPassword = null;
    this.historySchema = null;
    this.historyServer = null;
    this.historyPort = null;
    this.logJdbcDriver = null;
    this.logName = null;
    this.logUserName = null;
    this.logPassword = null;
    this.logSchema = null;
    this.logServer = null;
    this.logPort = null;
    this.inventoryJdbcDriver = null;
    this.inventoryName = null;
    this.inventoryUserName = null;
    this.inventoryPassword = null;
    this.inventorySchema = null;
    this.inventoryServer = null;
    this.inventoryPort = null;
    this.staticPagesJdbcDriver = null;
    this.staticPagesName = null;
    this.staticPagesUserName = null;
    this.staticPagesPassword = null;
    this.staticPagesSchema = null;
    this.staticPagesServer = null;
    this.staticPagesPort = null;
        }
    

    public function Initializer(map:Map) {
        super();
        this.initFieldsInitializer();
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
        this.getFormData(hashMap);
    }
    

    /* Java constructor: ActionScript classes have one constructor
    public function Initializer(initHashMap:JHashMap) {
        super();
        this.initFieldsInitializer();
        this.getFormData(initHashMap);
    }
    */
    

    public function getFormData(hashMap:JHashMap):void {
        try {
            var initializerData:InitializerData = InitializerData.getInstance();
            this.userJdbcDriver = (hashMap.get_(initializerData.CUSTOMERJDBCDRIVER) as String);
            this.userName = (hashMap.get_(initializerData.CUSTOMERNAME) as String);
            this.userUserName = (hashMap.get_(initializerData.CUSTOMERUSERNAME) as String);
            this.userPassword = (hashMap.get_(initializerData.CUSTOMERPASSWORD) as String);
            this.userSchema = (hashMap.get_(initializerData.CUSTOMERSCHEMA) as String);
            this.userServer = (hashMap.get_(initializerData.CUSTOMERSERVER) as String);
            this.userPort = (hashMap.get_(initializerData.CUSTOMERPORT) as String);
            this.historyJdbcDriver = (hashMap.get_(initializerData.HISTORYJDBCDRIVER) as String);
            this.historyName = (hashMap.get_(initializerData.HISTORYNAME) as String);
            this.historyUserName = (hashMap.get_(initializerData.HISTORYUSERNAME) as String);
            this.historyPassword = (hashMap.get_(initializerData.HISTORYPASSWORD) as String);
            this.historySchema = (hashMap.get_(initializerData.HISTORYSCHEMA) as String);
            this.historyServer = (hashMap.get_(initializerData.HISTORYSERVER) as String);
            this.historyPort = (hashMap.get_(initializerData.HISTORYPORT) as String);
            this.logJdbcDriver = (hashMap.get_(initializerData.LOGJDBCDRIVER) as String);
            this.logName = (hashMap.get_(initializerData.LOGNAME) as String);
            this.logUserName = (hashMap.get_(initializerData.LOGUSERNAME) as String);
            this.logPassword = (hashMap.get_(initializerData.LOGPASSWORD) as String);
            this.logSchema = (hashMap.get_(initializerData.LOGSCHEMA) as String);
            this.logServer = (hashMap.get_(initializerData.LOGSERVER) as String);
            this.logPort = (hashMap.get_(initializerData.LOGPORT) as String);
            this.inventoryJdbcDriver = (hashMap.get_(initializerData.INVENTORYJDBCDRIVER) as String);
            this.inventoryName = (hashMap.get_(initializerData.INVENTORYNAME) as String);
            this.inventoryUserName = (hashMap.get_(initializerData.INVENTORYUSERNAME) as String);
            this.inventoryPassword = (hashMap.get_(initializerData.INVENTORYPASSWORD) as String);
            this.inventorySchema = (hashMap.get_(initializerData.INVENTORYSCHEMA) as String);
            this.inventoryServer = (hashMap.get_(initializerData.INVENTORYSERVER) as String);
            this.inventoryPort = (hashMap.get_(initializerData.INVENTORYPORT) as String);
            this.staticPagesJdbcDriver = (hashMap.get_(initializerData.STATICPAGESJDBCDRIVER) as String);
            this.staticPagesName = (hashMap.get_(initializerData.STATICPAGESNAME) as String);
            this.staticPagesUserName = (hashMap.get_(initializerData.STATICPAGESUSERNAME) as String);
            this.staticPagesPassword = (hashMap.get_(initializerData.STATICPAGESPASSWORD) as String);
            this.staticPagesSchema = (hashMap.get_(initializerData.STATICPAGESSCHEMA) as String);
            this.staticPagesServer = (hashMap.get_(initializerData.STATICPAGESSERVER) as String);
            this.staticPagesPort = (hashMap.get_(initializerData.STATICPAGESPORT) as String);
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
        if (!this.isJdbcDriverValid(this.userJdbcDriver)) {
            isValid = false;
        }
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isValidRequired(this.userName, Initializer.MIN, Initializer.MAXDB)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.userUserName, Initializer.MIN, Initializer.MAX)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidNotRequired(this.userPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            isValid = false;
        }
        if (!this.isJdbcDriverValid(this.historyJdbcDriver)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.historyName, Initializer.MIN, Initializer.MAXDB)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.historyUserName, Initializer.MIN, Initializer.MAX)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidNotRequired(this.historyPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            isValid = false;
        }
        if (!this.isJdbcDriverValid(this.logJdbcDriver)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.logName, Initializer.MIN, Initializer.MAXDB)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.logUserName, Initializer.MIN, Initializer.MAX)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidNotRequired(this.logPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            isValid = false;
        }
        if (!this.isJdbcDriverValid(this.inventoryJdbcDriver)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.inventoryName, Initializer.MIN, Initializer.MAXDB)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.inventoryUserName, Initializer.MIN, Initializer.MAX)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidNotRequired(this.inventoryPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            isValid = false;
        }
        if (!this.isJdbcDriverValid(this.staticPagesJdbcDriver)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.staticPagesName, Initializer.MIN, Initializer.MAXDB)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidRequired(this.staticPagesUserName, Initializer.MIN, Initializer.MAX)) {
            isValid = false;
        }
        if (!stringValidationUtil.isValidNotRequired(this.staticPagesPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
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
    

    private function getJdbcDriverSolutionInfo():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>");
        stringBuffer.append("1. A JDBC driver you specified is not in your classpath.<br/>");
        stringBuffer.append("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>");
        stringBuffer.append("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>");
        stringBuffer.append("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>");
        stringBuffer.append("2. The JDBC driver you specified does not exit.<br/>");
        stringBuffer.append("Solution: Get a JDBC driver. <br/>");
        stringBuffer.append("3. The JDBC driver you specified is not valid.<br/>");
        stringBuffer.append("Solution: Use a valid JDBC driver.<p/>");
        return stringBuffer.toString();
    }
    

    public function getInvalidInfo():String {
        var isJdbcDriversValid:Boolean = true;
        var stringBuffer:StringMaker = new StringMaker();
        if (!this.isJdbcDriverValid(this.userJdbcDriver)) {
            isJdbcDriversValid = false;
            stringBuffer.append(this.getJdbcDriverValidationInfo(this.userJdbcDriver));
        }
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isValidRequired(this.userName, Initializer.MIN, Initializer.MAXDB)) {
            stringBuffer.append("User db name should be < " + String(Initializer.MAXDB) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidRequired(this.userUserName, Initializer.MIN, Initializer.MAX)) {
            stringBuffer.append("User db username should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidNotRequired(this.userPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            stringBuffer.append("User DB password should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MINPASSWORD) + " characters in length.<br />");
        }
        if (!this.isJdbcDriverValid(this.historyJdbcDriver)) {
            isJdbcDriversValid = false;
            stringBuffer.append(this.getJdbcDriverValidationInfo(this.historyJdbcDriver));
        }
        if (!stringValidationUtil.isValidRequired(this.historyName, Initializer.MIN, Initializer.MAXDB)) {
            stringBuffer.append("History db should be < " + String(Initializer.MAXDB) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidRequired(this.historyUserName, Initializer.MIN, Initializer.MAX)) {
            stringBuffer.append("History db username should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidNotRequired(this.historyPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            stringBuffer.append("History db password should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MINPASSWORD) + " characters in length.<br />");
        }
        if (!this.isJdbcDriverValid(this.logJdbcDriver)) {
            isJdbcDriversValid = false;
            stringBuffer.append(this.getJdbcDriverValidationInfo(this.logJdbcDriver));
        }
        if (!stringValidationUtil.isValidRequired(this.logName, Initializer.MIN, Initializer.MAXDB)) {
            stringBuffer.append("Log db should be < " + String(Initializer.MAXDB) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidRequired(this.logUserName, Initializer.MIN, Initializer.MAX)) {
            stringBuffer.append("Log db username should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidNotRequired(this.logPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            stringBuffer.append("Log db password should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MINPASSWORD) + " characters in length.<br />");
        }
        if (!this.isJdbcDriverValid(this.inventoryJdbcDriver)) {
            isJdbcDriversValid = false;
            stringBuffer.append(this.getJdbcDriverValidationInfo(this.inventoryJdbcDriver));
        }
        if (!stringValidationUtil.isValidRequired(this.inventoryName, Initializer.MIN, Initializer.MAXDB)) {
            stringBuffer.append("Inventory db should be < " + String(Initializer.MAXDB) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidRequired(this.inventoryUserName, Initializer.MIN, Initializer.MAX)) {
            stringBuffer.append("Inventory db username should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidNotRequired(this.inventoryPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            stringBuffer.append("Inventory DB password should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MINPASSWORD) + " characters in length.<br />");
        }
        if (!this.isJdbcDriverValid(this.staticPagesJdbcDriver)) {
            isJdbcDriversValid = false;
            stringBuffer.append(this.getJdbcDriverValidationInfo(this.staticPagesJdbcDriver));
        }
        if (!stringValidationUtil.isValidRequired(this.staticPagesName, Initializer.MIN, Initializer.MAXDB)) {
            stringBuffer.append("Static Pages db should be < " + String(Initializer.MAXDB) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidRequired(this.staticPagesUserName, Initializer.MIN, Initializer.MAX)) {
            stringBuffer.append("Static Pages db username should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MIN) + " characters in length.<br />");
        }
        if (!stringValidationUtil.isValidNotRequired(this.staticPagesPassword, Initializer.MINPASSWORD, Initializer.MAX)) {
            stringBuffer.append("Static Pages DB password should be < " + String(Initializer.MAX) + " and > " + String(Initializer.MINPASSWORD) + " characters in length.<br />");
        }
        if (!isJdbcDriversValid) {
            stringBuffer.append(this.getJdbcDriverSolutionInfo());
        }
        return stringBuffer.toString();
    }
    

    public function set_():void {
        this.logUtil.putF("Creating DB connection files", this, "set()");
        var userDbInitInfo:UserDbInitInfo = new UserDbInitInfo(false);
        userDbInitInfo.setJdbcDriver(this.userJdbcDriver);
        userDbInitInfo.setName(this.userName);
        userDbInitInfo.setUserName(this.userUserName);
        userDbInitInfo.setPassword(this.userPassword);
        userDbInitInfo.setSchema(this.userSchema);
        userDbInitInfo.setServer(this.userServer);
        userDbInitInfo.setPort(this.userPort);
        userDbInitInfo.setHasRead(true);
        userDbInitInfo.write();
        var historyDbInitInfo:HistoryDbInitInfo = new HistoryDbInitInfo(false);
        historyDbInitInfo.setJdbcDriver(this.historyJdbcDriver);
        historyDbInitInfo.setName(this.historyName);
        historyDbInitInfo.setUserName(this.historyUserName);
        historyDbInitInfo.setPassword(this.historyPassword);
        historyDbInitInfo.setSchema(this.historySchema);
        historyDbInitInfo.setServer(this.historyServer);
        historyDbInitInfo.setPort(this.historyPort);
        historyDbInitInfo.setHasRead(true);
        historyDbInitInfo.write();
        var logDbInitInfo:LogDbInitInfo = new LogDbInitInfo(false);
        logDbInitInfo.setJdbcDriver(this.logJdbcDriver);
        logDbInitInfo.setName(this.logName);
        logDbInitInfo.setUserName(this.logUserName);
        logDbInitInfo.setPassword(this.logPassword);
        logDbInitInfo.setSchema(this.logSchema);
        logDbInitInfo.setServer(this.logServer);
        logDbInitInfo.setPort(this.logPort);
        logDbInitInfo.setHasRead(true);
        logDbInitInfo.write();
        var staticPagesDbInitInfo:StaticPagesDbInitInfo = new StaticPagesDbInitInfo(false);
        staticPagesDbInitInfo.setJdbcDriver(this.staticPagesJdbcDriver);
        staticPagesDbInitInfo.setName(this.staticPagesName);
        staticPagesDbInitInfo.setUserName(this.staticPagesUserName);
        staticPagesDbInitInfo.setPassword(this.staticPagesPassword);
        staticPagesDbInitInfo.setSchema(this.staticPagesSchema);
        staticPagesDbInitInfo.setServer(this.staticPagesServer);
        staticPagesDbInitInfo.setPort(this.staticPagesPort);
        staticPagesDbInitInfo.setHasRead(true);
        staticPagesDbInitInfo.write();
        var inventoryDbInitInfo:InventoryDbInitInfo = new InventoryDbInitInfo(false);
        inventoryDbInitInfo.setJdbcDriver(this.inventoryJdbcDriver);
        inventoryDbInitInfo.setName(this.inventoryName);
        inventoryDbInitInfo.setUserName(this.inventoryUserName);
        inventoryDbInitInfo.setPassword(this.inventoryPassword);
        inventoryDbInitInfo.setSchema(this.inventorySchema);
        inventoryDbInitInfo.setServer(this.inventoryServer);
        inventoryDbInitInfo.setPort(this.inventoryPort);
        inventoryDbInitInfo.setHasRead(true);
        inventoryDbInitInfo.write();
        this.logUtil.putF("Created DB connection files", this, "set()");
    }
    }
}

