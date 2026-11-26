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

    public class UpTrackballInputToGameKeyEventAction extends GameKeyCompleteMotionGestureInputEvent {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!UpTrackballInputToGameKeyEventAction.instance_set) {
            UpTrackballInputToGameKeyEventAction.instance_set = true;
            UpTrackballInputToGameKeyEventAction.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return UpTrackballInputToGameKeyEventAction.instance_value;
    }
    private static function set instance(value:Object):void {
        UpTrackballInputToGameKeyEventAction.instance_set = true;
        UpTrackballInputToGameKeyEventAction.instance_value = value;
    }
    

    public static function getInstance():GameKeyCompleteMotionGestureInputEvent {
        if (UpTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT) {
            UpTrackballInputToGameKeyEventAction.instance = new UpTrackballInputToGameKeyEventAction();
        }
        return (UpTrackballInputToGameKeyEventAction.instance as GameKeyCompleteMotionGestureInputEvent);
    }
    

    public function UpTrackballInputToGameKeyEventAction() {
        super("Up Action", TrackballMotionGestureFactory.getInstance().UP, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
    }
}

