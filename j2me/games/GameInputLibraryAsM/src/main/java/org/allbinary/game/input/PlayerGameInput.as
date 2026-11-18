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
package org.allbinary.game.input {
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventListenerInterface;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JInteger;

    public class PlayerGameInput extends GameInput implements GameKeyEventListenerInterface {
        public var gameInputStrings:GameInputStrings = null;
        private var playerInputId:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerGameInput():void {
    this.gameInputStrings = GameInputStrings.getInstance();
    
        }
    

    public function PlayerGameInput(gameKeyEventList:BasicArrayList, removalGameKeyEventList:BasicArrayList, playerInputId:int) {
        super(gameKeyEventList, removalGameKeyEventList);
        this.initFieldsPlayerGameInput();
        this.playerInputId = playerInputId;
    }
    

    public function onPressGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    public function onDownGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        this.add(gameKeyEvent);
    }
    

    public function onDownKeyEvent(gameKeyEvent:GameKeyEvent):void {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    public function onDownKey(gameKeyEvent:*):void {
        PreLogUtil.put(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.toString()).toString(), this, this.gameInputStrings.ON_DOWN_GAME_KEY);
    }
    

    public function onUpGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        this.addForRemoval(gameKeyEvent);
    }
    

    public function onUpKeyEvent(gameKeyEvent:*):void {
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function getPlayerInputId():int {
        return this.playerInputId;
    }
    }
}

