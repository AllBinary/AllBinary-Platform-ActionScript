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
package org.allbinary.input.motion.gesture {
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.logic.NullUtil;

    public class TouchMotionGestureFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!TouchMotionGestureFactory.instance_set) {
            TouchMotionGestureFactory.instance_set = true;
            TouchMotionGestureFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return TouchMotionGestureFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        TouchMotionGestureFactory.instance_set = true;
        TouchMotionGestureFactory.instance_value = value;
    }
        public var LEFT:MotionGestureInput = null;
        public var RIGHT:MotionGestureInput = null;
        public var UP:MotionGestureInput = null;
        public var DOWN:MotionGestureInput = null;
        public var PRESSED:MotionGestureInput = null;
        public var RELEASED:MotionGestureInput = null;
        public var DIAGONAL_DOWN_RIGHT:MotionGestureInput = null;
        public var DIAGONAL_DOWN_LEFT:MotionGestureInput = null;
        public var DIAGONAL_UP_RIGHT:MotionGestureInput = null;
        public var DIAGONAL_UP_LEFT:MotionGestureInput = null;
        public var SCROLL_UP:MotionGestureInput = null;
        public var SCROLL_DOWN:MotionGestureInput = null;
        public var NO_MOTION:MotionGestureInput = null;
        public var LAST_MOTION:MotionGestureInput = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchMotionGestureFactory():void {
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        }
    

    public static function getInstance():TouchMotionGestureFactory {
        if (TouchMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            TouchMotionGestureFactory.instance = new TouchMotionGestureFactory();
        }
        return (TouchMotionGestureFactory.instance as TouchMotionGestureFactory);
    }
    

    public function TouchMotionGestureFactory() {
        super();
        this.initFieldsTouchMotionGestureFactory();
        var MAX:int = InputFactory.getInstance().MAX;
        this.LEFT = new MotionGestureInput(int(MAX - 3), "Left Touch");
        this.RIGHT = new MotionGestureInput(int(MAX - 4), "Right Touch");
        this.UP = new MotionGestureInput(int(MAX - 5), "Up Touch");
        this.DOWN = new MotionGestureInput(int(MAX - 6), "Down Touch");
        this.PRESSED = new MotionGestureInput(int(MAX - 7), "Screen Press");
        this.RELEASED = new MotionGestureInput(int(MAX - 8), "Released");
        this.DIAGONAL_DOWN_RIGHT = new MotionGestureInput(int(MAX - 9), "Diagonal Dn R");
        this.DIAGONAL_DOWN_LEFT = new MotionGestureInput(int(MAX - 10), "Diagonal Dn L");
        this.DIAGONAL_UP_RIGHT = new MotionGestureInput(int(MAX - 11), "Diagonal Up R");
        this.DIAGONAL_UP_LEFT = new MotionGestureInput(int(MAX - 12), "Diagonal Up L");
        this.SCROLL_UP = new MotionGestureInput(int(MAX - 13), "Scroll Up");
        this.SCROLL_DOWN = new MotionGestureInput(int(MAX - 14), "Scroll Down");
        this.NO_MOTION = new MotionGestureInput(int(MAX - 2), "No Motion");
        this.LAST_MOTION = new MotionGestureInput(int(MAX - 19), "Last Motion");
    }
    }
}

