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
package org.allbinary.animation.transition.shake {

    public class ShakeEventFactory {
    private static var instance_value:ShakeEventFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ShakeEventFactory {
        if (!ShakeEventFactory.instance_set) {
            ShakeEventFactory.instance_set = true;
            ShakeEventFactory.instance_value = new ShakeEventFactory();
        }
        return ShakeEventFactory.instance_value;
    }
        public var MICRO:ShakeEvent = null;
        public var SMALL:ShakeEvent = null;
        public var MEDIUM:ShakeEvent = null;
        public var LARGE:ShakeEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsShakeEventFactory():void {
    this.MICRO = new ShakeEvent();
    this.SMALL = new ShakeEvent();
    this.MEDIUM = new ShakeEvent();
    this.LARGE = new ShakeEvent();
        }

        public function ShakeEventFactory() {
            super();
            this.initFieldsShakeEventFactory();
        }
    

    public static function getInstance():ShakeEventFactory {
        return ShakeEventFactory.instance;
    }
    

    public function init():void {
    }
    }
}

