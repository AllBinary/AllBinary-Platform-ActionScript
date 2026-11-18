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
    import org.allbinary.input.AllBinarySensor;
    import org.allbinary.input.NoAllBinarySensor;

    public class SensorGameUpdateProcessor {
        private var inputSensor:AllBinarySensor = null;

        // Java field initializers run after the base constructor
        private function initFieldsSensorGameUpdateProcessor():void {
    this.inputSensor = NoAllBinarySensor.getInstance();
        }

        public function SensorGameUpdateProcessor() {
            super();
            this.initFieldsSensorGameUpdateProcessor();
        }
    

    public function setInputSensor(inputSensor:AllBinarySensor):void {
        this.inputSensor = inputSensor;
    }
    

    public function getInputSensor():AllBinarySensor {
        return this.inputSensor;
    }
    

    public function process(anyType:Object):void {
    }
    

    public function sendNotifications(anyType:Object):void {
    }
    

    public function isAnySensor():Boolean {
        if (this.inputSensor == NoAllBinarySensor.getInstance()) {
            return false;
        } else {
            return true;
        }
    }
    

    public function setNoSensors():void {
        this.setInputSensor(NoAllBinarySensor.getInstance());
    }
    }
}

