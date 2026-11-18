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

    public class DemoGameMidletEventHandler extends BasicEventHandler {
    private static var gameKeyEventHandler_value:DemoGameMidletEventHandler;
    private static var gameKeyEventHandler_set:Boolean = false;
    private static function get gameKeyEventHandler():DemoGameMidletEventHandler {
        if (!DemoGameMidletEventHandler.gameKeyEventHandler_set) {
            DemoGameMidletEventHandler.gameKeyEventHandler_set = true;
            DemoGameMidletEventHandler.gameKeyEventHandler_value = new DemoGameMidletEventHandler();
        }
        return DemoGameMidletEventHandler.gameKeyEventHandler_value;
    }
    

    public function DemoGameMidletEventHandler() {
        super();
    }
    

    public static function getInstance():DemoGameMidletEventHandler {
        return DemoGameMidletEventHandler.gameKeyEventHandler;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var demoGameMidletEventListener:DemoGameMidletEventListener = (eventListenerInterface as DemoGameMidletEventListener);
        demoGameMidletEventListener.onDemoGameMidletEvent((eventObject as DemoGameMidletEvent));
    }
    }
}

