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
package org.allbinary.input.motion.gyro.action {
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent;
    import org.allbinary.input.gyro.OrientationMotionGestureFactory;
    import org.allbinary.logic.NullUtil;

    public class DownOrientationInputToGameKeyEventAction extends GameKeyCompleteMotionGestureInputEvent {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!DownOrientationInputToGameKeyEventAction.instance_set) {
            DownOrientationInputToGameKeyEventAction.instance_set = true;
            DownOrientationInputToGameKeyEventAction.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return DownOrientationInputToGameKeyEventAction.instance_value;
    }
    private static function set instance(value:Object):void {
        DownOrientationInputToGameKeyEventAction.instance_set = true;
        DownOrientationInputToGameKeyEventAction.instance_value = value;
    }
    

    public static function getInstance():GameKeyCompleteMotionGestureInputEvent {
        if (DownOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT) {
            DownOrientationInputToGameKeyEventAction.instance = new DownOrientationInputToGameKeyEventAction();
        }
        return (DownOrientationInputToGameKeyEventAction.instance as GameKeyCompleteMotionGestureInputEvent);
    }
    

    public function DownOrientationInputToGameKeyEventAction() {
        super("Down Action", OrientationMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
    }
}

