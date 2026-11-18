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
package org.allbinary.input.motion.button {

    public class TouchScreenFactory {
    private static var SINGLETON_value:TouchScreenFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():TouchScreenFactory {
        if (!TouchScreenFactory.SINGLETON_set) {
            TouchScreenFactory.SINGLETON_set = true;
            TouchScreenFactory.SINGLETON_value = new TouchScreenFactory();
        }
        return TouchScreenFactory.SINGLETON_value;
    }
        private var multiTouch:Boolean = false;
        private var touch:Boolean = false;
        private var touchScreenType:TouchScreenType = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchScreenFactory():void {
    this.multiTouch = false;
    this.touch = false;
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH;
        }
    

    public function TouchScreenFactory() {
        super();
        this.initFieldsTouchScreenFactory();
    }
    

    public static function getInstance():TouchScreenFactory {
        return TouchScreenFactory.SINGLETON;
    }
    

    public function isMultiTouch():Boolean {
        return this.multiTouch;
    }
    

    public function setTouch(touch:Boolean):void {
    }
    

    public function isTouch():Boolean {
        return this.touch;
    }
    

    public function getTouchScreenType():TouchScreenType {
        return this.touchScreenType;
    }
    }
}

