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
package org.allbinary.bounds.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class BoundsChangeEventHandler extends BasicEventHandler {
    private static var SINGLETON_value:BasicEventHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():BasicEventHandler {
        if (!BoundsChangeEventHandler.SINGLETON_set) {
            BoundsChangeEventHandler.SINGLETON_set = true;
            BoundsChangeEventHandler.SINGLETON_value = new BoundsChangeEventHandler();
        }
        return BoundsChangeEventHandler.SINGLETON_value;
    }
    private static function set SINGLETON(value:BasicEventHandler):void {
        BoundsChangeEventHandler.SINGLETON_set = true;
        BoundsChangeEventHandler.SINGLETON_value = value;
    }
    

    public function BoundsChangeEventHandler() {
        super();
    }
    

    public static function getInstance():BasicEventHandler {
        return BoundsChangeEventHandler.SINGLETON;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var boundsChangeEventListener:BoundsChangeEventListener = (eventListenerInterface as BoundsChangeEventListener);
        boundsChangeEventListener.onBoundsChangeEvent((eventObject as BoundsChangeEvent));
    }
    }
}

