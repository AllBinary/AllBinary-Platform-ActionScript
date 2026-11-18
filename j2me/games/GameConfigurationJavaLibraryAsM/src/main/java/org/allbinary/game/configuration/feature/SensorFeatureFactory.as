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
package org.allbinary.game.configuration.feature {

    public class SensorFeatureFactory {
    private static var instance_value:SensorFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():SensorFeatureFactory {
        if (!SensorFeatureFactory.instance_set) {
            SensorFeatureFactory.instance_set = true;
            SensorFeatureFactory.instance_value = new SensorFeatureFactory();
        }
        return SensorFeatureFactory.instance_value;
    }
        public var NO_ORIENTATION:SensorFeature = null;
        public var ORIENTATION_SENSORS:SensorFeature = null;
        public var SIMULATED_ORIENTATION_SENSORS:SensorFeature = null;
        public var YAW:SensorFeature = null;
        public var YAW_MINUS_RIGHT_PLUS_LEFT:SensorFeature = null;
        public var YAW_MINUS_LEFT_PLUS_RIGHT:SensorFeature = null;
        public var PITCH:SensorFeature = null;
        public var ROLL:SensorFeature = null;

        // Java field initializers run after the base constructor
        private function initFieldsSensorFeatureFactory():void {
    this.NO_ORIENTATION = new SensorFeature("No Orientation");
    this.ORIENTATION_SENSORS = new SensorFeature("Orientation Sensors");
    this.SIMULATED_ORIENTATION_SENSORS = new SensorFeature("Simulated Orientation Sensors");
    this.YAW = new SensorFeature("Yaw");
    this.YAW_MINUS_RIGHT_PLUS_LEFT = new SensorFeature("Yaw -Right +Left");
    this.YAW_MINUS_LEFT_PLUS_RIGHT = new SensorFeature("Yaw -Left +Right ");
    this.PITCH = new SensorFeature("Pitch");
    this.ROLL = new SensorFeature("Roll");
        }
    

    public static function getInstance():SensorFeatureFactory {
        return SensorFeatureFactory.instance;
    }
    

    public function SensorFeatureFactory() {
        super();
        this.initFieldsSensorFeatureFactory();
    }
    }
}

