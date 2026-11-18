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
    import org.allbinary.game.input.GameKeyEventSourceInterface;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;

    public class GameKeyEventFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!GameKeyEventFactory.instance_set) {
            GameKeyEventFactory.instance_set = true;
            GameKeyEventFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameKeyEventFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var TOUCH_BUTTON_SOURCE_ID:int = 0;
        public var MOTION_GESTURE_SOURCE_ID:int = 0;
        private var MAX_SOURCES:int = 0;
        private var ARRAY:Vector.<Vector.<GameKeyEvent>> = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyEventFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.TOUCH_BUTTON_SOURCE_ID = 2;
    this.MOTION_GESTURE_SOURCE_ID = 3;
    this.MAX_SOURCES = 4;
    this.ARRAY = (function():Vector.<Vector.<GameKeyEvent>> { var array:Vector.<Vector.<GameKeyEvent>> = new Vector.<Vector.<GameKeyEvent>>(this.MAX_SOURCES); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<GameKeyEvent>(InputFactory.getInstance().MAX); } return array; })();
        }
    

    public static function getInstance():GameKeyEventFactory {
        if (GameKeyEventFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyEventFactory.instance = new GameKeyEventFactory();
        }
        return (GameKeyEventFactory.instance as GameKeyEventFactory);
    }
    

    public function GameKeyEventFactory() {
        super();
        this.initFieldsGameKeyEventFactory();
    }
    

    public function init():void {
        var nullUtil:NullUtil = NullUtil.getInstance();
        var size:int = InputFactory.getInstance().MAX;
        for (var index:int = this.MAX_SOURCES; --index >= 0; ) {
            for (var index2:int = size; --index2 >= 0; ) {
                this.ARRAY[index][index2] = GameKeyEvent.createEvent(nullUtil.NULL_OBJECT, index, index2);
            }
        }
    }
    

    public function getInstanceForKey(anyType:GameKeyEventSourceInterface, key:int):GameKeyEvent {
        var gameKeyEvent:GameKeyEvent = this.ARRAY[anyType.getSourceId()][key];
        return gameKeyEvent;
    }
    

    public function getInstanceForInput(anyType:GameKeyEventSourceInterface, input:Input):GameKeyEvent {
        var gameKeyEvent:GameKeyEvent = this.ARRAY[anyType.getSourceId()][input.getId()];
        return gameKeyEvent;
    }
    }
}

