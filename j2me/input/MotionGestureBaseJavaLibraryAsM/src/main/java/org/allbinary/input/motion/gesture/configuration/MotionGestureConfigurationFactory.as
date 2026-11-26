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
package org.allbinary.input.motion.gesture.configuration {

    public class MotionGestureConfigurationFactory {
    private static var config_value:MotionGestureConfiguration;
    private static var config_set:Boolean = false;
    private static function get config():MotionGestureConfiguration {
        if (!MotionGestureConfigurationFactory.config_set) {
            MotionGestureConfigurationFactory.config_set = true;
            MotionGestureConfigurationFactory.config_value = new MotionGestureConfiguration();
        }
        return MotionGestureConfigurationFactory.config_value;
    }
    private static function set config(value:MotionGestureConfiguration):void {
        MotionGestureConfigurationFactory.config_set = true;
        MotionGestureConfigurationFactory.config_value = value;
    }
    

    public function MotionGestureConfigurationFactory() {
        super();
    }
    

    public static function getInstance():MotionGestureConfiguration {
        return MotionGestureConfigurationFactory.config;
    }
    }
}

