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
package org.allbinary.logic.communication.log.config.type {

    public class LogConfigTypeData {
    private static var instance_value:LogConfigTypeData;
    private static var instance_set:Boolean = false;
    private static function get instance():LogConfigTypeData {
        if (!LogConfigTypeData.instance_set) {
            LogConfigTypeData.instance_set = true;
            LogConfigTypeData.instance_value = new LogConfigTypeData();
        }
        return LogConfigTypeData.instance_value;
    }
        public var NAME:String = null;
        public var DESCRIPTION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfigTypeData():void {
    this.NAME = "LOG_CONFIG_TYPE_NAME";
    this.DESCRIPTION = "LOG_CONFIG_TYPE_DESCRIPTION";
        }
    

    public static function getInstance():LogConfigTypeData {
        return LogConfigTypeData.instance;
    }
    

    public function LogConfigTypeData() {
        super();
        this.initFieldsLogConfigTypeData();
    }
    }
}

