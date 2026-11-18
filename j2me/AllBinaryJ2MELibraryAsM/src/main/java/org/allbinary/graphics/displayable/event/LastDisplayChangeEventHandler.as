/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.graphics.displayable.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class LastDisplayChangeEventHandler extends BasicEventHandler {
    private static var SINGLETON_value:LastDisplayChangeEventHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():LastDisplayChangeEventHandler {
        if (!LastDisplayChangeEventHandler.SINGLETON_set) {
            LastDisplayChangeEventHandler.SINGLETON_set = true;
            LastDisplayChangeEventHandler.SINGLETON_value = new LastDisplayChangeEventHandler();
        }
        return LastDisplayChangeEventHandler.SINGLETON_value;
    }
    

    public static function getInstance():LastDisplayChangeEventHandler {
        return LastDisplayChangeEventHandler.SINGLETON;
    }
    

    public function LastDisplayChangeEventHandler() {
        super();
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var displayChangeEventListener:DisplayChangeEventListener = ((eventListenerInterface as DisplayChangeEventListener));
        displayChangeEventListener.onDisplayChangeEvent((eventObject as DisplayChangeEvent));
    }
    }
}

