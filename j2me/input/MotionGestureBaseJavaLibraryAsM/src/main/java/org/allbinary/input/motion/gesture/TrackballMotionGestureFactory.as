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

    public class TrackballMotionGestureFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!TrackballMotionGestureFactory.instance_set) {
            TrackballMotionGestureFactory.instance_set = true;
            TrackballMotionGestureFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return TrackballMotionGestureFactory.instance_value;
    }
        public var LEFT:MotionGestureInput = null;
        public var RIGHT:MotionGestureInput = null;
        public var UP:MotionGestureInput = null;
        public var DOWN:MotionGestureInput = null;

        // Java field initializers run after the base constructor
        private function initFieldsTrackballMotionGestureFactory():void {
    
    
    
    
        }
    

    public static function getInstance():TrackballMotionGestureFactory {
        if (TrackballMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            TrackballMotionGestureFactory.instance = new TrackballMotionGestureFactory();
        }
        return (TrackballMotionGestureFactory.instance as TrackballMotionGestureFactory);
    }
    

    public function TrackballMotionGestureFactory() {
        super();
        this.initFieldsTrackballMotionGestureFactory();
        var MAX:int = InputFactory.getInstance().MAX;
        this.LEFT = new MotionGestureInput(int(MAX - 26), "L Trackball");
        this.RIGHT = new MotionGestureInput(int(MAX - 27), "R Trackball");
        this.UP = new MotionGestureInput(int(MAX - 28), "Up Trackball");
        this.DOWN = new MotionGestureInput(int(MAX - 29), "D Trackball");
    }
    }
}

