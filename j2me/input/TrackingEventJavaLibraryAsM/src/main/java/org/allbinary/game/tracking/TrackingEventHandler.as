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
package org.allbinary.game.tracking {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class TrackingEventHandler extends BasicEventHandler {
    private static var instance_value:TrackingEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():TrackingEventHandler {
        if (!TrackingEventHandler.instance_set) {
            TrackingEventHandler.instance_set = true;
            TrackingEventHandler.instance_value = new TrackingEventHandler();
        }
        return TrackingEventHandler.instance_value;
    }
    

    public static function getInstance():TrackingEventHandler {
        return TrackingEventHandler.instance;
    }
    

    public function TrackingEventHandler() {
        super();
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var trackingEventListenerInterface:TrackingEventListenerInterface = (eventListenerInterface as TrackingEventListenerInterface);
        trackingEventListenerInterface.onMovement((eventObject as TrackingEvent));
    }
    }
}

