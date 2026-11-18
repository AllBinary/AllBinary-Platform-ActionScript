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

    public class GameMotionGestureListener implements MotionGestureEventListener {
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var motionGestureCollection:BasicArrayList = null;
        private var touchGestureCollection:BasicArrayList = null;
        private var signed:CompleteMotionGestureListenerInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameMotionGestureListener():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.motionGestureCollection = new BasicArrayListD();
    this.touchGestureCollection = new BasicArrayListD();
    
        }
    

    public function GameMotionGestureListener(signed:CompleteMotionGestureListenerInterface) {
        super();
        this.initFieldsGameMotionGestureListener();
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
        this.touchGestureCollection.add(ev.getMotionGesture());
    }
    

    public function released(ev:MotionGestureEvent):void {
        try {
            this.touchGestureCollection.add(ev.getMotionGesture());
            this.signed.onMotionGestureCompleted(this.touchGestureCollection);
            this.touchGestureCollection.clear();
        } catch (e:*) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(StringUtil.getInstance().toString1(ev.getMotionGesture()));
            this.logUtil.put(stringBuffer.toString(), this, "release", e);
        }
    }
    

    public function onScrolledMotionGestureEvent(motionGestureEvent:MotionGestureEvent):void {
    }
    

    public function onMotionGestureEvent(ev:MotionGestureEvent):void {
        try {
            var motionGestureInput:MotionGestureInput = ev.getMotionGesture();
            if (motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED) {
                this.onPressedMotionGestureEvent(ev);
            } else if (motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED) {
                this.released(ev);
            } else {
                this.motionGestureCollection.add(motionGestureInput);
                this.signed.onMotionGestureCompleted(this.motionGestureCollection);
                this.motionGestureCollection.clear();
                this.touchGestureCollection.clear();
            }
        } catch (e:*) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(StringUtil.getInstance().toString1(ev.getMotionGesture()));
            this.logUtil.put(stringBuffer.toString(), this, "onMotionGestureEvent", e);
        }
    }
    }
}

