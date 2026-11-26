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
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.string.CommonStrings;

    public class ReleaseTouchInputToGameKeyEventAction extends GameKeyCompleteMotionGestureInputEvent {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!ReleaseTouchInputToGameKeyEventAction.instance_set) {
            ReleaseTouchInputToGameKeyEventAction.instance_set = true;
            ReleaseTouchInputToGameKeyEventAction.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return ReleaseTouchInputToGameKeyEventAction.instance_value;
    }
    private static function set instance(value:Object):void {
        ReleaseTouchInputToGameKeyEventAction.instance_set = true;
        ReleaseTouchInputToGameKeyEventAction.instance_value = value;
    }
        private var NONE:GameKey = null;

        // Java field initializers run after the base constructor
        private function initFieldsReleaseTouchInputToGameKeyEventAction():void {
    this.NONE = GameKeyFactory.getInstance().NONE;
        }
    

    public static function getInstance():GameKeyCompleteMotionGestureInputEvent {
        if (ReleaseTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT) {
            ReleaseTouchInputToGameKeyEventAction.instance = new ReleaseTouchInputToGameKeyEventAction();
        }
        return (ReleaseTouchInputToGameKeyEventAction.instance as GameKeyCompleteMotionGestureInputEvent);
    }
    

    public function ReleaseTouchInputToGameKeyEventAction() {
        super("Release Action", TouchMotionGestureFactory.getInstance().RELEASED, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
        this.initFieldsReleaseTouchInputToGameKeyEventAction();
        try {
            this.setGameKey(this.NONE);
            this.setGameKeyEvent(GameKeyEventFactory.getInstance().getInstanceForInput(this, this.NONE));
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
        }
    }
    

    override public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        super.update.apply(this, args);
    }

    private function update_jo0():void {
    }
    }
}

