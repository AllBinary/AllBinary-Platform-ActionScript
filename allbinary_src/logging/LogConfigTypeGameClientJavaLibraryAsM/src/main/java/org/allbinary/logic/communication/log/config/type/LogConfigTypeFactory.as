/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

    public class LogConfigTypeFactory {
    private static var instance_value:LogConfigTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LogConfigTypeFactory {
        if (!LogConfigTypeFactory.instance_set) {
            LogConfigTypeFactory.instance_set = true;
            LogConfigTypeFactory.instance_value = new LogConfigTypeFactory();
        }
        return LogConfigTypeFactory.instance_value;
    }
        private var NO_DESCRIPTION:String = null;
        public var OS:LogConfigType = null;
        public var FACTORYERROR:LogConfigType = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfigTypeFactory():void {
    this.NO_DESCRIPTION = "No Description";
    this.OS = new LogConfigType("Operating System", this.NO_DESCRIPTION);
    this.FACTORYERROR = new LogConfigType("Factory Error", this.NO_DESCRIPTION);
        }
    

    public static function getInstance():LogConfigTypeFactory {
        return LogConfigTypeFactory.instance;
    }
    

    public function LogConfigTypeFactory() {
        super();
        this.initFieldsLogConfigTypeFactory();
        LogConfigTypes.LOGGING.add(this.OS);
        LogConfigTypes.LOGGING.add(this.FACTORYERROR);
    }
    }
}

