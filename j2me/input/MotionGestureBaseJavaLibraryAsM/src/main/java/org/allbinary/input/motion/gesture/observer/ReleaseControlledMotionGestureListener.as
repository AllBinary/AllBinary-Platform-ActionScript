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
package org.allbinary.input.motion.gesture.observer {
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class ReleaseControlledMotionGestureListener implements MotionGestureEventListener {
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var currentMotionGesture:MotionGestureInput = null;
        private var isMouseGestureOccurring:Boolean = false;
        private var motionGestureCollection:BasicArrayList = null;
        private var signed:CompleteMotionGestureListenerInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsReleaseControlledMotionGestureListener():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
    this.isMouseGestureOccurring = false;
    this.motionGestureCollection = new BasicArrayListD();
    
        }
    

    public function ReleaseControlledMotionGestureListener(signed:CompleteMotionGestureListenerInterface) {
        super();
        this.initFieldsReleaseControlledMotionGestureListener();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.signed = signed;
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    public function onUpMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onDownMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onLeftMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onRightMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onDiagonalDownRightMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onDiagonalDownLeftMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onDiagonalUpRightMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onDiagonalUpLeftMotionGestureEvent(ev:MotionGestureEvent):void {
        this.onMotionGestureEvent(ev);
    }
    

    public function onPressedMotionGestureEvent(ev:MotionGestureEvent):void {
        this.isMouseGestureOccurring = true;
        this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
        this.onMotionGestureEvent(ev);
    }
    

    public function onScrolledMotionGestureEvent(motionGestureEvent:MotionGestureEvent):void {
    }
    

    public function released(ev:MotionGestureEvent):void {
        try {
            if (this.isMouseGestureOccurring == false) {
                return;
            }
            this.isMouseGestureOccurring = false;
            this.signed.onMotionGestureCompleted(this.motionGestureCollection);
            this.motionGestureCollection.clear();
        } catch (e:*) {
            this.logUtil.put(new StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString1(ev.getMotionGesture())).toString(), this, "release", e);
        }
    }
    

    public function onMotionGestureEvent(ev:MotionGestureEvent):void {
        if (this.isMouseGestureOccurring == false) {
            return;
        }
        var motionGestureInput:MotionGestureInput = ev.getMotionGesture();
        if (motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED) {
            this.onPressedMotionGestureEvent(ev);
        } else if (motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED) {
            this.released(ev);
        } else {
            if (this.currentMotionGesture !== motionGestureInput) {
                this.currentMotionGesture = motionGestureInput;
                this.motionGestureCollection.add(ev.getMotionGesture());
            }
        }
    }
    }
}

