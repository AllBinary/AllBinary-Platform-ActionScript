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
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;

    public class DbConnectionInfo implements DatabaseConnectionInfoInterface {
        private var jdbcDriver:String = null;
        private var name:String = null;
        private var userName:String = null;
        private var password:String = null;
        private var schema:String = null;
        private var server:String = null;
        private var port:String = null;
        private var url:String = null;
        private var host:String = null;
        private var SCHEMA_SEP:String = null;
        private var USER_NAME_KEY:String = null;
        private var PASSWORD_KEY:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsDbConnectionInfo():void {
    this.jdbcDriver = null;
    this.name = null;
    this.userName = null;
    this.password = null;
    this.schema = null;
    this.server = null;
    this.port = null;
    this.url = null;
    this.host = null;
    this.SCHEMA_SEP = "://";
    this.USER_NAME_KEY = "?user=";
    this.PASSWORD_KEY = "&password=";
        }
    

    public function DbConnectionInfo() {
        super();
        this.initFieldsDbConnectionInfo();
    }
    

    private function updateUrl():void {
        this.updateHost();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.getHost());
        stringBuffer.append(this.getName());
        stringBuffer.append(this.getUserNameKey());
        stringBuffer.append(this.getUserName());
        stringBuffer.append(this.getPasswordKey());
        stringBuffer.append(this.getPassword());
        this.url = stringBuffer.toString();
    }
    

    public function getUrl():String {
        return this.url;
    }
    

    public function getJdbcDriver():String {
        return this.jdbcDriver;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getUserName():String {
        return this.userName;
    }
    

    public function getPassword():String {
        return this.password;
    }
    

    private function updateHost():void {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.getSchema());
        stringBuffer.append(this.SCHEMA_SEP);
        stringBuffer.append(this.getServer());
        if (this.getPort() != null && this.getPort().length > 1) {
            stringBuffer.append(CommonSeps.getInstance().COLON);
            stringBuffer.append(this.getPort());
        }
        stringBuffer.append(AbPathData.getInstance().SEPARATOR);
        this.host = stringBuffer.toString();
    }
    

    public function getHost():String {
        return this.host;
    }
    

    public function getSchema():String {
        return this.schema;
    }
    

    public function getServer():String {
        return this.server;
    }
    

    public function getPort():String {
        return this.port;
    }
    

    public function setJdbcDriver(value:String):void {
        this.jdbcDriver = value;
    }
    

    public function setName(value:String):void {
        this.name = value;
        this.updateUrl();
    }
    

    public function setUserName(value:String):void {
        this.userName = value;
        this.updateUrl();
    }
    

    public function setPassword(value:String):void {
        this.password = value;
        this.updateUrl();
    }
    

    public function setSchema(value:String):void {
        this.schema = value;
        this.updateUrl();
    }
    

    public function setServer(value:String):void {
        this.server = value;
        this.updateUrl();
    }
    

    public function setPort(value:String):void {
        this.port = value;
        this.updateUrl();
    }
    

    public function getUserNameKey():String {
        return this.USER_NAME_KEY;
    }
    

    public function getPasswordKey():String {
        return this.PASSWORD_KEY;
    }
    }
}

