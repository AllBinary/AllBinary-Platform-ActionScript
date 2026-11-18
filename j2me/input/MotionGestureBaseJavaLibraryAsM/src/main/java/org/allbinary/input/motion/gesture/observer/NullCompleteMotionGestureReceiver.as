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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class NullCompleteMotionGestureReceiver implements CompleteMotionGestureListenerInterface {
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullCompleteMotionGestureReceiver():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public function NullCompleteMotionGestureReceiver() {
        super();
        this.initFieldsNullCompleteMotionGestureReceiver();
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        this.logUtil.putF("Null Gesture Reciever", this, commonStrings.CONSTRUCTOR);
    }
    

    public function onMotionGestureCompleted(list:BasicArrayList):void {
    }
    }
}

