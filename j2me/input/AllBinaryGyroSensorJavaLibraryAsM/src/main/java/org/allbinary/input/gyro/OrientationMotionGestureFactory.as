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
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.logic.NullUtil;

    public class OrientationMotionGestureFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!OrientationMotionGestureFactory.instance_set) {
            OrientationMotionGestureFactory.instance_set = true;
            OrientationMotionGestureFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return OrientationMotionGestureFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        OrientationMotionGestureFactory.instance_set = true;
        OrientationMotionGestureFactory.instance_value = value;
    }
        public var LEFT:MotionGestureInput = null;
        public var RIGHT:MotionGestureInput = null;
        public var UP:MotionGestureInput = null;
        public var DOWN:MotionGestureInput = null;
        public var ROLL_LEFT:MotionGestureInput = null;
        public var ROLL_RIGHT:MotionGestureInput = null;

        // Java field initializers run after the base constructor
        private function initFieldsOrientationMotionGestureFactory():void {
    
    
    
    
    
    
        }
    

    public static function getInstance():OrientationMotionGestureFactory {
        if (OrientationMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            OrientationMotionGestureFactory.instance = new OrientationMotionGestureFactory();
        }
        return (OrientationMotionGestureFactory.instance as OrientationMotionGestureFactory);
    }
    

    public function OrientationMotionGestureFactory() {
        super();
        this.initFieldsOrientationMotionGestureFactory();
        var MAX:int = InputFactory.getInstance().MAX;
        this.LEFT = new MotionGestureInput(int(MAX - 20), "Left Orient");
        this.RIGHT = new MotionGestureInput(int(MAX - 21), "Right Orient");
        this.UP = new MotionGestureInput(int(MAX - 22), "Up Orient");
        this.DOWN = new MotionGestureInput(int(MAX - 23), "Down Orient");
        this.ROLL_LEFT = new MotionGestureInput(int(MAX - 24), "Roll Left");
        this.ROLL_RIGHT = new MotionGestureInput(int(MAX - 25), "Roll Right");
    }
    }
}

