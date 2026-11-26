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
package org.allbinary.input.motion.button {
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyEventSourceInterface;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.input.mapping.InputToGameKeyMapping;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public final class TouchButtonInput extends Input implements GameKeyEventSourceInterface {
        public var logUtil:LogUtil = null;
        private var gameKeyEventFactory:GameKeyEventFactory = null;
        private var TOUCH_BUTTON_SOURCE_ID:int = 0;
        private var gameKeyEvent:GameKeyEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButtonInput():void {
    this.logUtil = LogUtil.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.TOUCH_BUTTON_SOURCE_ID = this.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID;
    this.gameKeyEvent = GameKeyEvent.NONE;
        }
    

    public function TouchButtonInput(id:int, name:String) {
        super(id, name);
        this.initFieldsTouchButtonInput();
        var inputFactory:InputFactory = InputFactory.getInstance();
        inputFactory.add(this.getId(), this);
    }
    

    public function update(...args):void {
        if (args.length == 1) {
            this.update_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "update");
    }

    private function update_jo1(inputToGameKeyMapping:InputToGameKeyMapping):void {
        try {
            var gameKey:GameKey = inputToGameKeyMapping.getInstance1(this.getId());
            this.gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
        }
    }
    

    public function getSourceId():int {
        return this.TOUCH_BUTTON_SOURCE_ID;
    }
    

    public function getGameKeyEvent():GameKeyEvent {
        return this.gameKeyEvent;
    }
    }
}

