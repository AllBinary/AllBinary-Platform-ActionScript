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
package org.allbinary.game.input.motion.action {
    import org.allbinary.game.input.CompleteMotionGestureInputEvent;
    import org.allbinary.game.input.CompleteMotionGestureInputEventListener;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;

    public class NoCompleteMotionGestureInputEventListener extends CompleteMotionGestureInputEventListener {
    private static var instance_value:NoCompleteMotionGestureInputEventListener;
    private static var instance_set:Boolean = false;
    private static function get instance():NoCompleteMotionGestureInputEventListener {
        if (!NoCompleteMotionGestureInputEventListener.instance_set) {
            NoCompleteMotionGestureInputEventListener.instance_set = true;
            NoCompleteMotionGestureInputEventListener.instance_value = new NoCompleteMotionGestureInputEventListener();
        }
        return NoCompleteMotionGestureInputEventListener.instance_value;
    }
    

    public function NoCompleteMotionGestureInputEventListener() {
        super();
    }
    

    override public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    override public function onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent:CompleteMotionGestureInputEvent):void {
    }
    

    public static function getInstance():NoCompleteMotionGestureInputEventListener {
        return NoCompleteMotionGestureInputEventListener.instance;
    }
    }
}

