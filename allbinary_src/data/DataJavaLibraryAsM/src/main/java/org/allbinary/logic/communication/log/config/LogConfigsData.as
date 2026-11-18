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
package org.allbinary.logic.communication.log.config {

    public class LogConfigsData {
    private static var instance_value:LogConfigsData;
    private static var instance_set:Boolean = false;
    private static function get instance():LogConfigsData {
        if (!LogConfigsData.instance_set) {
            LogConfigsData.instance_set = true;
            LogConfigsData.instance_value = new LogConfigsData();
        }
        return LogConfigsData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfigsData():void {
    this.NAME = "LOG_CONFIGS_NAME";
        }

        public function LogConfigsData() {
            super();
            this.initFieldsLogConfigsData();
        }
    

    public static function getInstance():LogConfigsData {
        return LogConfigsData.instance;
    }
    }
}

