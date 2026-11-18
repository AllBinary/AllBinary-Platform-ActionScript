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
package org.allbinary.game.input.mapping.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class InputMappingEventHandler extends BasicEventHandler {
    private static var gameKeyEventHandler_value:InputMappingEventHandler;
    private static var gameKeyEventHandler_set:Boolean = false;
    private static function get gameKeyEventHandler():InputMappingEventHandler {
        if (!InputMappingEventHandler.gameKeyEventHandler_set) {
            InputMappingEventHandler.gameKeyEventHandler_set = true;
            InputMappingEventHandler.gameKeyEventHandler_value = new InputMappingEventHandler();
        }
        return InputMappingEventHandler.gameKeyEventHandler_value;
    }
    

    public function InputMappingEventHandler() {
        super();
    }
    

    public static function getInstance():InputMappingEventHandler {
        return InputMappingEventHandler.gameKeyEventHandler;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var inputMappingEventListenerInterface:InputMappingEventListenerInterface = (eventListenerInterface as InputMappingEventListenerInterface);
        inputMappingEventListenerInterface.onInputMappingEvent((eventObject as InputMappingEvent));
    }
    }
}

