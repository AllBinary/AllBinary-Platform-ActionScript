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
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyEventSourceInterface;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.input.mapping.InputToGameKeyMapping;
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.string.CommonStrings;

    public class GameKeyCompleteMotionGestureInputEvent extends CompleteMotionGestureInputEvent implements GameKeyEventSourceInterface {
        private var gameKeyEventFactory:GameKeyEventFactory = null;
        private var SOURCE_ID:int = 0;
        private var gameKey:GameKey = null;
        private var gameKeyEvent:GameKeyEvent = null;
        private var inputToGameKeyMapping:InputToGameKeyMapping = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyCompleteMotionGestureInputEvent():void {
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.SOURCE_ID = this.gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID;
    this.gameKey = GameKey.NULL_GAME_KEY;
    this.gameKeyEvent = GameKeyEvent.NONE;
    
        }
    

    public function GameKeyCompleteMotionGestureInputEvent(name:String, motionGestureInput:MotionGestureInput, inputToGameKeyMapping:InputToGameKeyMapping) {
        super(name, motionGestureInput);
        this.initFieldsGameKeyCompleteMotionGestureInputEvent();
        this.inputToGameKeyMapping = inputToGameKeyMapping;
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().add(this);
        this.update();
    }
    

    public function getSourceId():int {
        return this.SOURCE_ID;
    }
    

    public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "update");
    }

    private function update_jo0():void {
        try {
            this.setGameKey(this.inputToGameKeyMapping.getInstance1(this.getMotionGestureInput().getId()));
            this.setGameKeyEvent(this.gameKeyEventFactory.getInstanceForInput(this, this.getGameKey()));
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
        }
    }
    

    public function setGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        this.gameKeyEvent = gameKeyEvent;
    }
    

    public function getGameKeyEvent():GameKeyEvent {
        return this.gameKeyEvent;
    }
    

    public function setGameKey(gameKey:GameKey):void {
        this.gameKey = gameKey;
    }
    

    public function getGameKey():GameKey {
        return this.gameKey;
    }
    }
}

