/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.input.motion.button {

    public class TouchScreenTypesFactory {
    private static var instance_value:TouchScreenTypesFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():TouchScreenTypesFactory {
        if (!TouchScreenTypesFactory.instance_set) {
            TouchScreenTypesFactory.instance_set = true;
            TouchScreenTypesFactory.instance_value = new TouchScreenTypesFactory();
        }
        return TouchScreenTypesFactory.instance_value;
    }
        public var FINGER:TouchScreenType = null;
        public var NOTOUCH:TouchScreenType = null;
        public var STYLUS:TouchScreenType = null;
        public var UNDEFINED:TouchScreenType = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchScreenTypesFactory():void {
    this.FINGER = new TouchScreenType("Finger");
    this.NOTOUCH = new TouchScreenType("No Touch");
    this.STYLUS = new TouchScreenType("Stylus");
    this.UNDEFINED = new TouchScreenType("Undefined");
        }

        public function TouchScreenTypesFactory() {
            super();
            this.initFieldsTouchScreenTypesFactory();
        }
    

    public static function getInstance():TouchScreenTypesFactory {
        return TouchScreenTypesFactory.instance;
    }
    }
}

