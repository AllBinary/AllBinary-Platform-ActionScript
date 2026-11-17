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
package org.allbinary.logic.util.event {

    public class EventStrings {
    private static var instance_value:EventStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():EventStrings {
        if (!EventStrings.instance_set) {
            EventStrings.instance_set = true;
            EventStrings.instance_value = new EventStrings();
        }
        return EventStrings.instance_value;
    }
        public var PERFORMANCE_MESSAGE:String = null;
        public var TOTAL_LISTENERS:String = null;
        public var LISTENER_LABEL:String = null;
        public var FIRE_EVENT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsEventStrings():void {
    this.PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
    this.TOTAL_LISTENERS = "Total Listeners: ";
    this.LISTENER_LABEL = " Listener: ";
    this.FIRE_EVENT = "fireEvent";
        }

        public function EventStrings() {
            super();
            this.initFieldsEventStrings();
        }
    

    public static function getInstance():EventStrings {
        return EventStrings.instance;
    }
    }
}

