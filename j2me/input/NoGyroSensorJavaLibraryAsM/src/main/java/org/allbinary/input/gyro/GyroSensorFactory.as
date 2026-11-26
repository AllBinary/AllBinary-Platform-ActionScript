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

    public class GyroSensorFactory {
    private static var allBinaryGyroSensor_value:AllBinaryOrientationSensor;
    private static var allBinaryGyroSensor_set:Boolean = false;
    private static function get allBinaryGyroSensor():AllBinaryOrientationSensor {
        if (!GyroSensorFactory.allBinaryGyroSensor_set) {
            GyroSensorFactory.allBinaryGyroSensor_set = true;
            GyroSensorFactory.allBinaryGyroSensor_value = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR;
        }
        return GyroSensorFactory.allBinaryGyroSensor_value;
    }
    private static function set allBinaryGyroSensor(value:AllBinaryOrientationSensor):void {
        GyroSensorFactory.allBinaryGyroSensor_set = true;
        GyroSensorFactory.allBinaryGyroSensor_value = value;
    }
    

    public static function init():void {
        GyroSensorFactory.allBinaryGyroSensor = new NoGyroSensor();
    }
    

    public static function getInstance():AllBinaryOrientationSensor {
        return GyroSensorFactory.allBinaryGyroSensor;
    }
    }
}

