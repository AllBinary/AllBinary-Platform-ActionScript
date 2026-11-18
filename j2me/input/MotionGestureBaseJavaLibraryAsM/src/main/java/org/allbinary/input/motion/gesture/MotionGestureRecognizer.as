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
    import org.allbinary.graphics.Line;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration;
    import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory;
    import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler;
    import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool;
    import org.allbinary.input.motion.gesture.observer.MotionGestureEvent;
    import org.allbinary.input.motion.gesture.observer.MovedMotionGesturesHandler;
    import org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.J2SEMath;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.string.CommonStrings;

    public class MotionGestureRecognizer {
        public var logUtil:LogUtil = null;
        private var j2seMath:J2SEMath = null;
        private var origin:GPoint = null;
        private var previous:GPoint = null;
        private var intermediate:GPoint = null;
        private var line:Line = null;
        private var motionGesturesHandler:BasicMotionGesturesHandler = null;
        private var movedMotionGesturesHandler:BasicEventHandler = null;
        private var scrolledMotionGesturesHandler:BasicEventHandler = null;
        private var motionEventCircularPool:MotionEventCircularPool = null;

        // Java field initializers run after the base constructor
        private function initFieldsMotionGestureRecognizer():void {
    this.logUtil = LogUtil.getInstance();
    this.j2seMath = J2SEMath.getInstance();
    this.origin = PointFactory.getInstance().ZERO_ZERO;
    this.previous = this.origin;
    this.intermediate = this.origin;
    this.line = new Line(this.origin, this.origin);
    
    
    
    
        }
    

    public function MotionGestureRecognizer(id:int) {
        super();
        this.initFieldsMotionGestureRecognizer();
        this.motionEventCircularPool = MotionEventCircularPool.createPool(id);
        var motionGesturesHandler:BasicEventHandler = new BasicEventHandler();
        var movedMotionGesturesHandler:BasicEventHandler = motionGesturesHandler;
        var scrolledMotionGesturesHandler:BasicEventHandler = motionGesturesHandler;
        try {
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance();
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance();
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
        }
        this.motionGesturesHandler = (motionGesturesHandler as BasicMotionGesturesHandler);
        this.movedMotionGesturesHandler = movedMotionGesturesHandler;
        this.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler;
    }
    

    public function processPressedMotionEvent(current:GPoint, deviceId:int, button:int):Boolean {
        this.intermediate = this.origin;
        this.previous = this.origin;
        var event:MotionGestureEvent = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().PRESSED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public function processReleasedMotionEvent(current:GPoint, deviceId:int, button:int):Boolean {
        var event:MotionGestureEvent = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().RELEASED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public function processDraggedMotionEvent(current:GPoint, deviceId:int, buttonMask:int):void {
        if (this.previous === this.origin || this.intermediate === this.origin) {
            this.previous = current;
            this.intermediate = current;
            return;
        }
        this.line.setP1(this.previous);
        this.line.setP2(current);
        var minimumMotionGesture:int = MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture();
        if (this.j2seMath.abs(Number(this.line.getDeltaX())) < Number(minimumMotionGesture) && this.j2seMath.abs(Number(this.line.getDeltaY())) < Number(minimumMotionGesture)) {
            this.intermediate = current;
            return;
        }
        var gradient:Number = this.line.getGradient();
        var absGradient:Number = Number(this.j2seMath.abs(Number(gradient)));
        var conf:MotionGestureConfiguration = MotionGestureConfigurationFactory.getInstance();
        var touchMotionGestureFactory:TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        var newMotionGesture:MotionGestureInput = touchMotionGestureFactory.NO_MOTION;
        var diagonalToleranceHigher:Number = 12.0;
        var diagonalToleranceLower:Number = 12.0;
        if (conf.isDiagonalMotionGestureAllowed()) {
            diagonalToleranceHigher = Number((int(90 - conf.getDiagonalTolerance())));
            diagonalToleranceLower = Number(conf.getDiagonalTolerance());
        }
        if (absGradient > Math.tan(Math.toRadians(diagonalToleranceHigher))) {
            if (this.line.getDeltaY() > 0.0) {
                newMotionGesture = touchMotionGestureFactory.UP;
            } else {
                newMotionGesture = touchMotionGestureFactory.DOWN;
            }
        } else {
            if (absGradient < Math.tan(Math.toRadians(diagonalToleranceLower))) {
                if (this.line.getDeltaX() > 0.0) {
                    newMotionGesture = touchMotionGestureFactory.LEFT;
                } else {
                    newMotionGesture = touchMotionGestureFactory.RIGHT;
                }
            } else {
                if (gradient > 0.0) {
                    if (this.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT;
                    }
                } else {
                    if (this.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT;
                    }
                }
            }
        }
        this.previous = current;
        this.intermediate = current;
        var event:MotionGestureEvent = this.motionEventCircularPool.getInstance1(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return;
    }
    

    public function processMovedMotionEvent(current:GPoint, deviceId:int, button:int):Boolean {
        var event:MotionGestureEvent = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().NO_MOTION);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.movedMotionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public function processScrolledMotionEvent(current:GPoint, deviceId:int, button:int):Boolean {
        var touchMotionGestureFactory:TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        var newMotionGesture:MotionGestureInput = touchMotionGestureFactory.NO_MOTION;
        if (button > 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP;
        } else if (button < 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN;
        }
        var event:MotionGestureEvent = this.motionEventCircularPool.getInstance1(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.scrolledMotionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public function getMotionGesturesHandler():BasicMotionGesturesHandler {
        return this.motionGesturesHandler;
    }
    }
}

