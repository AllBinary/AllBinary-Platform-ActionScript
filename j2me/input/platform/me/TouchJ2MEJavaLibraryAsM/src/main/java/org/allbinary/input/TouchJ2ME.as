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
package org.allbinary.input {
    import org.allbinary.input.motion.AllMotionRecognizer;
    import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler;
    import org.allbinary.input.motion.gesture.observer.GameMotionGestureListener;
    import org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    //TouchJ2ME
    public class TouchJ2ME {
        public var logUtil:LogUtil = null;
        private var DEVICE_ID:int = 0;
        private var motionRecognizer:AllMotionRecognizer = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchJ2ME():void {
    this.logUtil = LogUtil.getInstance();
    this.DEVICE_ID = 0;
    this.motionRecognizer = new AllMotionRecognizer();
        }
    

    public function TouchJ2ME() {
        super();
        this.initFieldsTouchJ2ME();
        var motionGesturesHandler:BasicMotionGesturesHandler = this.motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler();
        motionGesturesHandler.addListenerInterface(new GameMotionGestureListener(MotionGestureReceiveInterfaceFactory.getInstance()));
    }
    

    public function pointerDragged(x:int, y:int):void {
        try {
            this.motionRecognizer.processDraggedMotionEvent(x, y, this.DEVICE_ID, 0);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerDragged", e);
        }
    }
    

    public function pointerPressed(x:int, y:int):void {
        try {
            this.motionRecognizer.processStartMotionEvent(x, y, this.DEVICE_ID, 0);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerPressed", e);
        }
    }
    

    public function pointerReleased(x:int, y:int):void {
        try {
            this.motionRecognizer.processEndMotionEvent(x, y, this.DEVICE_ID, 0);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerReleased", e);
        }
    }
    }
}

