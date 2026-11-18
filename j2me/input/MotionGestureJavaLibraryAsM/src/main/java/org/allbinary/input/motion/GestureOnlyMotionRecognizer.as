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
package org.allbinary.input.motion {
    import org.allbinary.graphics.CustomGPoint;
    import org.allbinary.graphics.GPointCircularPool;
    import org.allbinary.input.motion.gesture.MotionGestureRecognizer;

    public class GestureOnlyMotionRecognizer extends MotionRecognizer {
    private static var index:int = 0;
    private static var pointCircularPool_value:GPointCircularPool;
    private static var pointCircularPool_set:Boolean = false;
    private static function get pointCircularPool():GPointCircularPool {
        if (!GestureOnlyMotionRecognizer.pointCircularPool_set) {
            GestureOnlyMotionRecognizer.pointCircularPool_set = true;
            GestureOnlyMotionRecognizer.pointCircularPool_value = new GPointCircularPool(40);
        }
        return GestureOnlyMotionRecognizer.pointCircularPool_value;
    }
        private var motionGestureRecognizer:MotionGestureRecognizer = null;
        private var id:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGestureOnlyMotionRecognizer():void {
    
    
        }
    

    public function GestureOnlyMotionRecognizer() {
        super();
        this.initFieldsGestureOnlyMotionRecognizer();
        this.id = GestureOnlyMotionRecognizer.index++;
        this.motionGestureRecognizer = new MotionGestureRecognizer(this.id);
    }
    

    override public function processStartMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        var point:CustomGPoint = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
    }
    

    override public function processEndMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        var point:CustomGPoint = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
    }
    

    override public function processDraggedMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        var point:CustomGPoint = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
    }
    }
}

