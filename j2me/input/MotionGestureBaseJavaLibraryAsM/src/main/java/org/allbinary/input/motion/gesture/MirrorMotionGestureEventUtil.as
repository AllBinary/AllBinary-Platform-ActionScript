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
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool;
    import org.allbinary.input.motion.gesture.observer.MotionGestureEvent;
    import java.lang.JInteger;

    public class MirrorMotionGestureEventUtil {
    private static var instance_value:MirrorMotionGestureEventUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():MirrorMotionGestureEventUtil {
        if (!MirrorMotionGestureEventUtil.instance_set) {
            MirrorMotionGestureEventUtil.instance_set = true;
            MirrorMotionGestureEventUtil.instance_value = new MirrorMotionGestureEventUtil();
        }
        return MirrorMotionGestureEventUtil.instance_value;
    }
        private var motionEventCircularPool:MotionEventCircularPool = null;

        // Java field initializers run after the base constructor
        private function initFieldsMirrorMotionGestureEventUtil():void {
    
        }
    

    public function MirrorMotionGestureEventUtil() {
        super();
        this.initFieldsMirrorMotionGestureEventUtil();
        this.motionEventCircularPool = MotionEventCircularPool.createPool(JInteger.MAX_VALUE);
    }
    

    public function mirrorVerticle(motionGestureEvent:MotionGestureEvent, halfWidth:int):MotionGestureEvent {
        var event:MotionGestureEvent = this.motionEventCircularPool.getInstance1(motionGestureEvent.getMotionGesture());
        var previousNewX:int = this.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth);
        var currentNewX:int = this.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth);
        var pointFactory:PointFactory = PointFactory.getInstance();
        var mirroredPreviousPoint:GPoint = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY());
        var mirroredCurrentPoint:GPoint = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY());
        event.setPreviousPoint(mirroredPreviousPoint);
        event.setCurrentPoint(mirroredCurrentPoint);
        return event;
    }
    

    public function getNewX(x:int, halfWidth:int):int {
        var newX:int = 0;
        if (x > halfWidth) {
            newX = int(halfWidth - (int(x - halfWidth)));
        } else {
            newX = int(halfWidth + (int(halfWidth - x)));
        }
        return newX;
    }
    

    public static function getInstance():MirrorMotionGestureEventUtil {
        return MirrorMotionGestureEventUtil.instance;
    }
    }
}

