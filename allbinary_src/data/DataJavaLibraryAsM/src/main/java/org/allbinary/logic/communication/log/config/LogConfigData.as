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

    public class LogConfigData {
    private static var instance_value:LogConfigData;
    private static var instance_set:Boolean = false;
    private static function get instance():LogConfigData {
        if (!LogConfigData.instance_set) {
            LogConfigData.instance_set = true;
            LogConfigData.instance_value = new LogConfigData();
        }
        return LogConfigData.instance_value;
    }
        public var NAME:String = null;
        public var DESCRIPTION:String = null;
        public var FILE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfigData():void {
    this.NAME = "LOG_CONFIG_NAME";
    this.DESCRIPTION = "LOG_CONFIG_DESCRIPTION";
    this.FILE = "LOG_CONFIG_FILE";
        }
    

    public static function getInstance():LogConfigData {
        return LogConfigData.instance;
    }
    

    public function LogConfigData() {
        super();
        this.initFieldsLogConfigData();
    }
    }
}

