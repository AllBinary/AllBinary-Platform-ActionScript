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
package org.allbinary.graphics.displayable.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class DisplayChangeEventHandler extends BasicEventHandler {
    private static var SINGLETON_value:DisplayChangeEventHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():DisplayChangeEventHandler {
        if (!DisplayChangeEventHandler.SINGLETON_set) {
            DisplayChangeEventHandler.SINGLETON_set = true;
            DisplayChangeEventHandler.SINGLETON_value = new DisplayChangeEventHandler();
        }
        return DisplayChangeEventHandler.SINGLETON_value;
    }
    

    public static function getInstance():DisplayChangeEventHandler {
        return DisplayChangeEventHandler.SINGLETON;
    }
    

    public function DisplayChangeEventHandler() {
        super();
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var displayChangeEventListener:DisplayChangeEventListener = ((eventListenerInterface as DisplayChangeEventListener));
        displayChangeEventListener.onDisplayChangeEvent((eventObject as DisplayChangeEvent));
    }
    }
}

