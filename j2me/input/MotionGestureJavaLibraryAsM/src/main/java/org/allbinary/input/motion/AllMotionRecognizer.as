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
    import org.allbinary.input.motion.button.TouchButtonRecognizer;
    import org.allbinary.input.motion.gesture.MotionGestureRecognizer;
    import org.allbinary.logic.communication.log.LogUtil;

    public class AllMotionRecognizer extends MotionRecognizer {
    private static var index:int = 0;
    private static var pointCircularPool_value:GPointCircularPool;
    private static var pointCircularPool_set:Boolean = false;
    private static function get pointCircularPool():GPointCircularPool {
        if (!AllMotionRecognizer.pointCircularPool_set) {
            AllMotionRecognizer.pointCircularPool_set = true;
            AllMotionRecognizer.pointCircularPool_value = new GPointCircularPool(40);
        }
        return AllMotionRecognizer.pointCircularPool_value;
    }
        public var logUtil:LogUtil = null;
        private var motionGestureRecognizer:MotionGestureRecognizer = null;
        private var touchButtonProcessing:Boolean = false;
        private var touchButtonRecognizer:TouchButtonRecognizer = null;
        private var id:int = 0;
        private var lastX:int = 0;
        private var lastY:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAllMotionRecognizer():void {
    this.logUtil = LogUtil.getInstance();
    
    this.touchButtonProcessing = false;
    
    
    this.lastX = 0;
    this.lastY = 0;
        }
    

    public function AllMotionRecognizer() {
        super();
        this.initFieldsAllMotionRecognizer();
        this.id = AllMotionRecognizer.index++;
        this.motionGestureRecognizer = new MotionGestureRecognizer(this.id);
        this.touchButtonRecognizer = new TouchButtonRecognizer();
    }
    

    override public function processStartMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        if (this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing = true;
        }
        if (!this.touchButtonProcessing) {
            var point:CustomGPoint = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    override public function processEndMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        if (this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
        }
        if (!this.touchButtonProcessing) {
            var point:CustomGPoint = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
        }
        if (this.touchButtonProcessing) {
            this.touchButtonProcessing = false;
        }
    }
    

    override public function processDraggedMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        if (this.touchButtonProcessing) {
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
        if (!this.touchButtonProcessing) {
            var point:CustomGPoint = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    public function processMovedMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        if (x != this.lastX || y != this.lastY) {
            this.lastX = x;
            this.lastY = y;
            var point:CustomGPoint = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    public function processScrolledMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        var point:CustomGPoint = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers);
    }
    

    public function getMotionGestureRecognizer():MotionGestureRecognizer {
        return this.motionGestureRecognizer;
    }
    }
}

