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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class GameKeyCompleteMotionGestureInputEventFactory {
    private static var SINGLETON_value:GameKeyCompleteMotionGestureInputEventFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():GameKeyCompleteMotionGestureInputEventFactory {
        if (!GameKeyCompleteMotionGestureInputEventFactory.SINGLETON_set) {
            GameKeyCompleteMotionGestureInputEventFactory.SINGLETON_set = true;
            GameKeyCompleteMotionGestureInputEventFactory.SINGLETON_value = new GameKeyCompleteMotionGestureInputEventFactory();
        }
        return GameKeyCompleteMotionGestureInputEventFactory.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        private var eventList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyCompleteMotionGestureInputEventFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.eventList = new BasicArrayListD();
        }

        public function GameKeyCompleteMotionGestureInputEventFactory() {
            super();
            this.initFieldsGameKeyCompleteMotionGestureInputEventFactory();
        }
    

    public static function getInstance():GameKeyCompleteMotionGestureInputEventFactory {
        return GameKeyCompleteMotionGestureInputEventFactory.SINGLETON;
    }
    

    public function add(gameKeyCompleteMotionGestureInputEvent:GameKeyCompleteMotionGestureInputEvent):void {
        this.eventList.add(gameKeyCompleteMotionGestureInputEvent);
    }
    

    public function updateAll():void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(this.eventList.size()).toString(), this, "updateAll");
        for (var index:int = int(this.eventList.size() - 1); index >= 0; index--) {
            var gameKeyCompleteMotionGestureInputEvent:GameKeyCompleteMotionGestureInputEvent = (this.eventList.objectArray[index] as GameKeyCompleteMotionGestureInputEvent);
            gameKeyCompleteMotionGestureInputEvent.update();
        }
    }
    }
}

