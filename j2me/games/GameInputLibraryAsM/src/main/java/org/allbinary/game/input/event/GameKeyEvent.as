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
package org.allbinary.game.input.event {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class GameKeyEvent extends AllBinaryEventObject {
    private static var NONE_value:GameKeyEvent;
    private static var NONE_set:Boolean = false;
    public static function get NONE():GameKeyEvent {
        if (!GameKeyEvent.NONE_set) {
            GameKeyEvent.NONE_set = true;
            GameKeyEvent.NONE_value = new GameKeyEvent(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false);
        }
        return GameKeyEvent.NONE_value;
    }
        private var sourceId:int = 0;
        private var repeated:Boolean = false;
        private var key:int = 0;
        private var gameActionKey:int = 0;
        private var originalKey:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyEvent():void {
    
    this.repeated = false;
    
    this.gameActionKey = 0;
    this.originalKey = 0;
        }
    

    public static function createEvent(anyType:Object, sourceId:int, key:int):GameKeyEvent {
        return new GameKeyEvent(anyType, sourceId, 0, 0, key, false);
    }
    

    public function GameKeyEvent(anyType:Object, sourceId:int, originalKey:int, gameActionKey:int, key:int, repeated:Boolean) {
        super(anyType);
        this.initFieldsGameKeyEvent();
        this.sourceId = sourceId;
        this.setOriginalKey(originalKey);
        this.key = key;
        this.setGameActionKey(gameActionKey);
        this.setRepeatEvents(repeated);
    }
    

    public function init(...args):void {
        if (args.length == 1) {
            this.init_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo1(anyType:Object):void {
        this.setSource(anyType);
    }
    

    private function setRepeatEvents(repeated:Boolean):void {
        this.repeated = repeated;
    }
    

    public function hasRepeatEvents():Boolean {
        return this.repeated;
    }
    

    public function getKey():int {
        return this.key;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("\nKey: ");
        stringBuffer.appendint(this.getKey());
        return stringBuffer.toString();
    }
    

    public function getOriginalKey():int {
        return this.originalKey;
    }
    

    public function setOriginalKey(originalKey:int):void {
        this.originalKey = originalKey;
    }
    

    public function getGameActionKey():int {
        return this.gameActionKey;
    }
    

    public function setGameActionKey(gameActionKey:int):void {
        this.gameActionKey = gameActionKey;
    }
    

    public function getSourceId():int {
        return this.sourceId;
    }
    }
}

