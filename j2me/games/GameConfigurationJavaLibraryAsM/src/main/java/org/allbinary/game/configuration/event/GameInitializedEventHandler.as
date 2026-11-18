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
package org.allbinary.game.configuration.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class GameInitializedEventHandler extends BasicEventHandler {
    private static var gameKeyEventHandler_value:GameInitializedEventHandler;
    private static var gameKeyEventHandler_set:Boolean = false;
    private static function get gameKeyEventHandler():GameInitializedEventHandler {
        if (!GameInitializedEventHandler.gameKeyEventHandler_set) {
            GameInitializedEventHandler.gameKeyEventHandler_set = true;
            GameInitializedEventHandler.gameKeyEventHandler_value = new GameInitializedEventHandler();
        }
        return GameInitializedEventHandler.gameKeyEventHandler_value;
    }
    

    public function GameInitializedEventHandler() {
        super();
    }
    

    public static function getInstance():GameInitializedEventHandler {
        return GameInitializedEventHandler.gameKeyEventHandler;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var gameInitializedListenerInterface:GameInitializedListenerInterface = ((eventListenerInterface as GameInitializedListenerInterface));
        gameInitializedListenerInterface.onGameInitialized((eventObject as GameInitializedEvent));
    }
    }
}

