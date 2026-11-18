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
package org.allbinary.input.gyro {

    public class OrientationData {
    private static var SINGLETON_value:OrientationData;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():OrientationData {
        if (!OrientationData.SINGLETON_set) {
            OrientationData.SINGLETON_set = true;
            OrientationData.SINGLETON_value = new OrientationData();
        }
        return OrientationData.SINGLETON_value;
    }
        public var ORIENTATION_SENSOR_INPUT:String = null;
        public var ORIENTATION_TYPE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsOrientationData():void {
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
        }
    

    public function OrientationData() {
        super();
        this.initFieldsOrientationData();
    }
    

    public static function getInstance():OrientationData {
        return OrientationData.SINGLETON;
    }
    }
}

