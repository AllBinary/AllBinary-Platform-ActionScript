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

    public class GameFeatureEventHandler extends BasicEventHandler {
    private static var gameKeyEventHandler_value:GameFeatureEventHandler;
    private static var gameKeyEventHandler_set:Boolean = false;
    private static function get gameKeyEventHandler():GameFeatureEventHandler {
        if (!GameFeatureEventHandler.gameKeyEventHandler_set) {
            GameFeatureEventHandler.gameKeyEventHandler_set = true;
            GameFeatureEventHandler.gameKeyEventHandler_value = new GameFeatureEventHandler();
        }
        return GameFeatureEventHandler.gameKeyEventHandler_value;
    }
    

    public function GameFeatureEventHandler() {
        super();
    }
    

    public static function getInstance():GameFeatureEventHandler {
        return GameFeatureEventHandler.gameKeyEventHandler;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var gameFeatureListenerInterface:GameFeatureListenerInterface = ((eventListenerInterface as GameFeatureListenerInterface));
        gameFeatureListenerInterface.onGameFeatureChange((eventObject as GameFeatureEvent));
    }
    }
}

