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
    import org.allbinary.game.input.mapping.InputToGameKeyMapping;
    import org.allbinary.input.motion.gesture.MotionGestureInput;

    public class GameKeyCompleteMotionGestureInputEvent extends CompleteMotionGestureInputEvent implements GameKeyEventSourceInterface {
        private var gameKey:GameKey = null;
        private var gameKeyEvent:GameKeyEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyCompleteMotionGestureInputEvent():void {
    this.gameKey = GameKey.NULL_GAME_KEY;
    this.gameKeyEvent = GameKeyEvent.NONE;
        }
    

    public function GameKeyCompleteMotionGestureInputEvent(name:String, motionGestureInput:MotionGestureInput, inputToGameKeyMapping:InputToGameKeyMapping) {
        super(name, motionGestureInput);
        this.initFieldsGameKeyCompleteMotionGestureInputEvent();
    }
    

    public function getSourceId():int {
        return 0;
    }
    

    public function update():void {
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

