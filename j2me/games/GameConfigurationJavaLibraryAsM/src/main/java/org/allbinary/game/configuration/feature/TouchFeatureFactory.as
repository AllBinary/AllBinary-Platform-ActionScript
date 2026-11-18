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

    public class TouchFeatureFactory {
    private static var instance_value:TouchFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():TouchFeatureFactory {
        if (!TouchFeatureFactory.instance_set) {
            TouchFeatureFactory.instance_set = true;
            TouchFeatureFactory.instance_value = new TouchFeatureFactory();
        }
        return TouchFeatureFactory.instance_value;
    }
        public var TOUCH_ENABLED:TouchFeature = null;
        public var SHOW_SCREEN_BUTTONS:TouchFeature = null;
        public var AUTO_HIDE_SHOW_SCREEN_BUTTONS:TouchFeature = null;
        public var HIDE_SCREEN_BUTTONS:TouchFeature = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchFeatureFactory():void {
    this.TOUCH_ENABLED = new TouchFeature("Touch Enabled");
    this.SHOW_SCREEN_BUTTONS = new TouchFeature("Show");
    this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = new TouchFeature("Auto Hide (One Level)");
    this.HIDE_SCREEN_BUTTONS = new TouchFeature("Hide");
        }
    

    public static function getInstance():TouchFeatureFactory {
        return TouchFeatureFactory.instance;
    }
    

    public function TouchFeatureFactory() {
        super();
        this.initFieldsTouchFeatureFactory();
    }
    }
}

