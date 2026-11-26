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
package org.allbinary.layer.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class ScrollMapEventHandler extends BasicEventHandler {
    private static var SINGLETON_value:ScrollMapEventHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():ScrollMapEventHandler {
        if (!ScrollMapEventHandler.SINGLETON_set) {
            ScrollMapEventHandler.SINGLETON_set = true;
            ScrollMapEventHandler.SINGLETON_value = new ScrollMapEventHandler();
        }
        return ScrollMapEventHandler.SINGLETON_value;
    }
    private static function set SINGLETON(value:ScrollMapEventHandler):void {
        ScrollMapEventHandler.SINGLETON_set = true;
        ScrollMapEventHandler.SINGLETON_value = value;
    }
    

    public function ScrollMapEventHandler() {
        super();
    }
    

    public static function getInstance():ScrollMapEventHandler {
        return ScrollMapEventHandler.SINGLETON;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var scrollMapEventListenerInterface:ScrollMapEventListenerInterface = ((eventListenerInterface as ScrollMapEventListenerInterface));
        scrollMapEventListenerInterface.onMoveEvent((eventObject as ScrollMapEvent));
    }
    }
}

