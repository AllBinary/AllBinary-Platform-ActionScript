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
package org.allbinary.input.motion.touch.action {
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.logic.NullUtil;

    public class DiagonalUpLeftTouchInputToGameKeyEventAction extends GameKeyCompleteMotionGestureInputEvent {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!DiagonalUpLeftTouchInputToGameKeyEventAction.instance_set) {
            DiagonalUpLeftTouchInputToGameKeyEventAction.instance_set = true;
            DiagonalUpLeftTouchInputToGameKeyEventAction.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return DiagonalUpLeftTouchInputToGameKeyEventAction.instance_value;
    }
    private static function set instance(value:Object):void {
        DiagonalUpLeftTouchInputToGameKeyEventAction.instance_set = true;
        DiagonalUpLeftTouchInputToGameKeyEventAction.instance_value = value;
    }
    

    public static function getInstance():GameKeyCompleteMotionGestureInputEvent {
        if (DiagonalUpLeftTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT) {
            DiagonalUpLeftTouchInputToGameKeyEventAction.instance = new DiagonalUpLeftTouchInputToGameKeyEventAction();
        }
        return (DiagonalUpLeftTouchInputToGameKeyEventAction.instance as GameKeyCompleteMotionGestureInputEvent);
    }
    

    public function DiagonalUpLeftTouchInputToGameKeyEventAction() {
        super("Diagonal Up Left Action", TouchMotionGestureFactory.getInstance().DIAGONAL_UP_LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
    }
}

