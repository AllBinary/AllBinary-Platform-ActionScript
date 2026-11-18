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
package org.allbinary.game.midlet {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class GameMidletEventHandler extends BasicEventHandler {
    private static var gameKeyEventHandler_value:GameMidletEventHandler;
    private static var gameKeyEventHandler_set:Boolean = false;
    private static function get gameKeyEventHandler():GameMidletEventHandler {
        if (!GameMidletEventHandler.gameKeyEventHandler_set) {
            GameMidletEventHandler.gameKeyEventHandler_set = true;
            GameMidletEventHandler.gameKeyEventHandler_value = new GameMidletEventHandler();
        }
        return GameMidletEventHandler.gameKeyEventHandler_value;
    }
    

    public function GameMidletEventHandler() {
        super();
    }
    

    public static function getInstance():GameMidletEventHandler {
        return GameMidletEventHandler.gameKeyEventHandler;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var gameMidletEventListener:GameMidletEventListener = (eventListenerInterface as GameMidletEventListener);
        gameMidletEventListener.onGameEnd(eventObject);
    }
    }
}

