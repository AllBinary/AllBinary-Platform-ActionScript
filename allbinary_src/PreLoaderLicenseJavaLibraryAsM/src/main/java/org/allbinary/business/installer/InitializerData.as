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
    import org.allbinary.logic.string.StringMaker;

    public class InitializerData {
    private static var instance_value:InitializerData;
    private static var instance_set:Boolean = false;
    private static function get instance():InitializerData {
        if (!InitializerData.instance_set) {
            InitializerData.instance_set = true;
            InitializerData.instance_value = new InitializerData();
        }
        return InitializerData.instance_value;
    }
        public var DBUSER:String = null;
        public var DBPASSWORD:String = null;
        public var ADMINJDBCDRIVER:String = null;
        public var ADMINSCHEMA:String = null;
        public var ADMINSERVER:String = null;
        public var ADMINPORT:String = null;
        public var CUSTOMERJDBCDRIVER:String = null;
        public var CUSTOMERNAME:String = null;
        public var CUSTOMERUSERNAME:String = null;
        public var CUSTOMERPASSWORD:String = null;
        public var CUSTOMERSCHEMA:String = null;
        public var CUSTOMERSERVER:String = null;
        public var CUSTOMERPORT:String = null;
        public var HISTORYJDBCDRIVER:String = null;
        public var HISTORYNAME:String = null;
        public var HISTORYUSERNAME:String = null;
        public var HISTORYPASSWORD:String = null;
        public var HISTORYSCHEMA:String = null;
        public var HISTORYSERVER:String = null;
        public var HISTORYPORT:String = null;
        public var LOGJDBCDRIVER:String = null;
        public var LOGNAME:String = null;
        public var LOGUSERNAME:String = null;
        public var LOGPASSWORD:String = null;
        public var LOGSCHEMA:String = null;
        public var LOGSERVER:String = null;
        public var LOGPORT:String = null;
        public var INVENTORYJDBCDRIVER:String = null;
        public var INVENTORYNAME:String = null;
        public var INVENTORYUSERNAME:String = null;
        public var INVENTORYPASSWORD:String = null;
        public var INVENTORYSCHEMA:String = null;
        public var INVENTORYSERVER:String = null;
        public var INVENTORYPORT:String = null;
        public var STATICPAGESJDBCDRIVER:String = null;
        public var STATICPAGESNAME:String = null;
        public var STATICPAGESUSERNAME:String = null;
        public var STATICPAGESPASSWORD:String = null;
        public var STATICPAGESSCHEMA:String = null;
        public var STATICPAGESSERVER:String = null;
        public var STATICPAGESPORT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitializerData():void {
    this.DBUSER = "DBUSER";
    this.DBPASSWORD = "DBPASSWORD";
    this.ADMINJDBCDRIVER = "ADMIN_JDBCDRIVER";
    this.ADMINSCHEMA = "ADMINSCHEMA";
    this.ADMINSERVER = "ADMINSERVER";
    this.ADMINPORT = "ADMINPORT";
    this.CUSTOMERJDBCDRIVER = "CUSTOMER_JDBCDRIVER";
    this.CUSTOMERNAME = "CUSTOMERNAME";
    this.CUSTOMERUSERNAME = "CUSTOMERUSERNAME";
    this.CUSTOMERPASSWORD = "CUSTOMERPASSWORD";
    this.CUSTOMERSCHEMA = "CUSTOMERSCHEMA";
    this.CUSTOMERSERVER = "CUSTOMERSERVER";
    this.CUSTOMERPORT = "CUSTOMERPORT";
    this.HISTORYJDBCDRIVER = "HISTORY_JDBCDRIVER";
    this.HISTORYNAME = "HISTORYNAME";
    this.HISTORYUSERNAME = "HISTORYUSERNAME";
    this.HISTORYPASSWORD = "HISTORYPASSWORD";
    this.HISTORYSCHEMA = "HISTORYSCHEMA";
    this.HISTORYSERVER = "HISTORYSERVER";
    this.HISTORYPORT = "HISTORYPORT";
    this.LOGJDBCDRIVER = "LOG_JDBCDRIVER";
    this.LOGNAME = "LOGNAME";
    this.LOGUSERNAME = "LOGUSERNAME";
    this.LOGPASSWORD = "LOGPASSWORD";
    this.LOGSCHEMA = "LOGSCHEMA";
    this.LOGSERVER = "LOGSERVER";
    this.LOGPORT = "LOGPORT";
    this.INVENTORYJDBCDRIVER = "INVENTORY_JDBCDRIVER";
    this.INVENTORYNAME = "INVENTORYNAME";
    this.INVENTORYUSERNAME = "INVENTORYUSERNAME";
    this.INVENTORYPASSWORD = "INVENTORYPASSWORD";
    this.INVENTORYSCHEMA = "INVENTORYSCHEMA";
    this.INVENTORYSERVER = "INVENTORYSERVER";
    this.INVENTORYPORT = "INVENTORYPORT";
    this.STATICPAGESJDBCDRIVER = "STATICPAGES_JDBCDRIVER";
    this.STATICPAGESNAME = "STATICPAGESNAME";
    this.STATICPAGESUSERNAME = "STATICPAGESUSERNAME";
    this.STATICPAGESPASSWORD = "STATICPAGESPASSWORD";
    this.STATICPAGESSCHEMA = "STATICPAGESSCHEMA";
    this.STATICPAGESSERVER = "STATICPAGESSERVER";
    this.STATICPAGESPORT = "STATICPAGESPORT";
        }

        public function InitializerData() {
            super();
            this.initFieldsInitializerData();
        }
    

    public static function getInstance():InitializerData {
        return InitializerData.instance;
    }
    

    public function getJdbcDriverSolutionInfo():String {
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
    }
}

