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
package org.allbinary.business.time {

    public class TimeData {
    private static var instance_value:TimeData;
    private static var instance_set:Boolean = false;
    private static function get instance():TimeData {
        if (!TimeData.instance_set) {
            TimeData.instance_set = true;
            TimeData.instance_value = new TimeData();
        }
        return TimeData.instance_value;
    }
        public var NAME:String = null;
        public var START:String = null;
        public var END:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTimeData():void {
    this.NAME = "TIME_NAME";
    this.START = "TIME_START";
    this.END = "TIME_END";
        }
    

    public static function getInstance():TimeData {
        return TimeData.instance;
    }
    

    public function TimeData() {
        super();
        this.initFieldsTimeData();
    }
    }
}

