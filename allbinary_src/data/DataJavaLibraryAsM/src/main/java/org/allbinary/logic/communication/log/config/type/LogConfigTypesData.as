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

    public class LogConfigTypesData {
    private static var instance_value:LogConfigTypesData;
    private static var instance_set:Boolean = false;
    private static function get instance():LogConfigTypesData {
        if (!LogConfigTypesData.instance_set) {
            LogConfigTypesData.instance_set = true;
            LogConfigTypesData.instance_value = new LogConfigTypesData();
        }
        return LogConfigTypesData.instance_value;
    }
        public var NAME:String = null;
        public var DESCRIPTION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfigTypesData():void {
    this.NAME = "LOG_CONFIG_TYPES_NAME";
    this.DESCRIPTION = "LOG_CONFIG_TYPES_DESCRIPTION";
        }

        public function LogConfigTypesData() {
            super();
            this.initFieldsLogConfigTypesData();
        }
    

    public static function getInstance():LogConfigTypesData {
        return LogConfigTypesData.instance;
    }
    }
}

