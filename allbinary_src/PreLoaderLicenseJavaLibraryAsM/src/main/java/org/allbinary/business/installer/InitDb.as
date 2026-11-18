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
    import org.allbinary.business.init.db.DbConnectionInfo;
    import org.allbinary.logic.system.security.licensing.LicensingException;

    //Warning you must have sql root access
    public class InitDb {
        private var anyType:Object = null;
        private var METHOD_CALL_GET_HOST_NAME:String = null;
        private var METHOD_CALL_ADD_USERS:String = null;
        private var METHOD_CALL_ADD_DATABASES:String = null;
        private var METHOD_CALL_ADD_TABLES:String = null;
        private var METHOD_CALL_TEMP_MAIN_PATH:String = null;
        private var METHOD_CALL_MAIN_PATH:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitDb():void {
    this.anyType = null;
    this.METHOD_CALL_GET_HOST_NAME = "getHostName";
    this.METHOD_CALL_ADD_USERS = "addUsers";
    this.METHOD_CALL_ADD_DATABASES = "addDatabases";
    this.METHOD_CALL_ADD_TABLES = "addTables";
    this.METHOD_CALL_TEMP_MAIN_PATH = "useTemporaryMainPath";
    this.METHOD_CALL_MAIN_PATH = "useNormalMainPath";
        }
    

    public function InitDb(...args) {
        super();
        this.initFieldsInitDb();
        this.jconstruct(args);
    }

    private function jconstruct(args:Array):void {
        if (args.length == 0) {
            (function():void {
            }).apply(this, args);
            return;
        }
        if (args.length == 1) {
            (function(dbConnectionInfo:DbConnectionInfo):void {
            }).apply(this, args);
            return;
        }
    }
    
    

    public function setHelper(anyType:Object):void {
        this.anyType = anyType;
    }
    

    public function getHelper():Object {
        return this.anyType;
    }
    

    private function getHostName():String {
        try {
            var dynamicClass:String = JSystem.className(this.anyType);
            var method:Method = dynamicClass.getMethod(this.METHOD_CALL_GET_HOST_NAME, null);
            var result:String = (method.invoke(this.anyType, null) as String);
            return result;
        } catch (e:*) {
            return null;
        }
    }
    

    public function addUsers():Boolean {
        try {
            var dynamicClass:String = JSystem.className(this.anyType);
            var method:Method = dynamicClass.getMethod(this.METHOD_CALL_ADD_USERS, null);
            var result:* = (method.invoke(this.anyType, null) as *);
            return result.booleanValue();
        } catch (e:*) {
            return false;
        }
    }
    

    public function addDatabases():Boolean {
        try {
            var dynamicClass:String = JSystem.className(this.anyType);
            var method:Method = dynamicClass.getMethod(this.METHOD_CALL_ADD_DATABASES, null);
            var result:* = (method.invoke(this.anyType, null) as *);
            return result.booleanValue();
        } catch (e:*) {
            return false;
        }
    }
    

    public function addTables():Boolean {
        try {
            var dynamicClass:String = JSystem.className(this.anyType);
            var method:Method = dynamicClass.getMethod(this.METHOD_CALL_ADD_TABLES, null);
            var result:* = (method.invoke(this.anyType, null) as *);
            return result.booleanValue();
        } catch (e:*) {
            return false;
        }
    }
    

    public function useTemporaryMainPath():Boolean {
        try {
            var dynamicClass:String = JSystem.className(this.anyType);
            var method:Method = dynamicClass.getMethod(this.METHOD_CALL_TEMP_MAIN_PATH, null);
            var result:* = (method.invoke(this.anyType, null) as *);
            return result.booleanValue();
        } catch (e:*) {
            return false;
        }
    }
    

    public function useNormalMainPath():Boolean {
        try {
            var dynamicClass:String = JSystem.className(this.anyType);
            var method:Method = dynamicClass.getMethod(this.METHOD_CALL_MAIN_PATH, null);
            var result:* = (method.invoke(this.anyType, null) as *);
            return result.booleanValue();
        } catch (e:*) {
            return false;
        }
    }
    }
}

