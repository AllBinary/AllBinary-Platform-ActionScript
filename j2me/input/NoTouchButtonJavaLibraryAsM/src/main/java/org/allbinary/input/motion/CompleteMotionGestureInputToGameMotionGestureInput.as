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
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;

    public class CompleteMotionGestureInputToGameMotionGestureInput {
    private static var instance_value:CompleteMotionGestureInputToGameMotionGestureInput;
    private static var instance_set:Boolean = false;
    private static function get instance():CompleteMotionGestureInputToGameMotionGestureInput {
        if (!CompleteMotionGestureInputToGameMotionGestureInput.instance_set) {
            CompleteMotionGestureInputToGameMotionGestureInput.instance_set = true;
            CompleteMotionGestureInputToGameMotionGestureInput.instance_value = new CompleteMotionGestureInputToGameMotionGestureInput();
        }
        return CompleteMotionGestureInputToGameMotionGestureInput.instance_value;
    }
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompleteMotionGestureInputToGameMotionGestureInput():void {
    this.commonStrings = CommonStrings.getInstance();
        }

        public function CompleteMotionGestureInputToGameMotionGestureInput() {
            super();
            this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput();
        }
    

    public static function getInstance():CompleteMotionGestureInputToGameMotionGestureInput {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance;
    }
    

    public function init():void {
        PreLogUtil.put("No Touch Button = No Compound Motion Gestures", this, this.commonStrings.INIT);
    }
    }
}

