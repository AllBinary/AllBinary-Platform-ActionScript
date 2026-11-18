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
package org.allbinary.game.input {
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.string.CommonStrings;

    public class CompleteMotionGestureInputEvent extends AllBinaryEventObject implements CompleteMotionGestureInputInterface {
        public var logUtil:LogUtil = null;
        private var name:String = null;
        private var motionGestureInput:MotionGestureInput = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompleteMotionGestureInputEvent():void {
    this.logUtil = LogUtil.getInstance();
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.motionGestureInput = TouchMotionGestureFactory.getInstance().NO_MOTION;
        }
    

    public function CompleteMotionGestureInputEvent(name:String, motionGestureInput:MotionGestureInput) {
        super(motionGestureInput);
        this.initFieldsCompleteMotionGestureInputEvent();
        this.setName(name);
        try {
            this.setMotionGestureInput(motionGestureInput);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "InputToGameKeyEventAction", e);
        }
    }
    

    public function setName(name:String):void {
        this.name = name;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function setMotionGestureInput(motionGestureInput:MotionGestureInput):void {
        this.motionGestureInput = motionGestureInput;
    }
    

    public function getMotionGestureInput():MotionGestureInput {
        return this.motionGestureInput;
    }
    }
}

