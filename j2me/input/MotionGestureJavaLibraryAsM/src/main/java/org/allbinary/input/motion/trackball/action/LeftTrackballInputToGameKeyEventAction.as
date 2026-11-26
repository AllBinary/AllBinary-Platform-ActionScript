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
package org.allbinary.input.motion.trackball.action {
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent;
    import org.allbinary.input.motion.gesture.TrackballMotionGestureFactory;
    import org.allbinary.logic.NullUtil;

    public class LeftTrackballInputToGameKeyEventAction extends GameKeyCompleteMotionGestureInputEvent {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!LeftTrackballInputToGameKeyEventAction.instance_set) {
            LeftTrackballInputToGameKeyEventAction.instance_set = true;
            LeftTrackballInputToGameKeyEventAction.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return LeftTrackballInputToGameKeyEventAction.instance_value;
    }
    private static function set instance(value:Object):void {
        LeftTrackballInputToGameKeyEventAction.instance_set = true;
        LeftTrackballInputToGameKeyEventAction.instance_value = value;
    }
    

    public static function getInstance():GameKeyCompleteMotionGestureInputEvent {
        if (LeftTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT) {
            LeftTrackballInputToGameKeyEventAction.instance = new LeftTrackballInputToGameKeyEventAction();
        }
        return (LeftTrackballInputToGameKeyEventAction.instance as GameKeyCompleteMotionGestureInputEvent);
    }
    

    public function LeftTrackballInputToGameKeyEventAction() {
        super("Left Action", TrackballMotionGestureFactory.getInstance().LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
    }
}

