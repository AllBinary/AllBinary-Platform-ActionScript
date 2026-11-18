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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.string.CommonStrings;

    public class GameKeyEventHandler {
    private static var instance_value:GameKeyEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():GameKeyEventHandler {
        if (!GameKeyEventHandler.instance_set) {
            GameKeyEventHandler.instance_set = true;
            GameKeyEventHandler.instance_value = new GameKeyEventHandler();
        }
        return GameKeyEventHandler.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var pressGameKeyEventHandler:PressGameKeyEventHandler = null;
        private var upGameKeyEventHandler:UpGameKeyEventHandler = null;
        private var downGameKeyEventHandler:DownGameKeyEventHandler = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyEventHandler():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
        }

        public function GameKeyEventHandler() {
            super();
            this.initFieldsGameKeyEventHandler();
        }
    

    public static function getInstance():GameKeyEventHandler {
        return GameKeyEventHandler.instance;
    }
    

    public function removeAllListeners():void {
        this.pressGameKeyEventHandler.removeAllListeners();
        this.upGameKeyEventHandler.removeAllListeners();
        this.downGameKeyEventHandler.removeAllListeners();
    }
    

    public function addListenerForPlayer(eventListenerInterface:EventListenerInterface, playerInputId:int):void {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
    }
    

    public function addListener(eventListenerInterface:EventListenerInterface):void {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
    }
    

    public function removeListener(eventListenerInterface:EventListenerInterface):void {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.REMOVE_LISTENER);
        this.pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
    }
    }
}

