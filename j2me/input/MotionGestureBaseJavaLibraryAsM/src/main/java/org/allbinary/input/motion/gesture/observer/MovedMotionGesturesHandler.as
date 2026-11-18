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
package org.allbinary.input.motion.gesture.observer {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class MovedMotionGesturesHandler extends BasicEventHandler {
    private static var SINGLETON_value:MovedMotionGesturesHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():MovedMotionGesturesHandler {
        if (!MovedMotionGesturesHandler.SINGLETON_set) {
            MovedMotionGesturesHandler.SINGLETON_set = true;
            MovedMotionGesturesHandler.SINGLETON_value = new MovedMotionGesturesHandler();
        }
        return MovedMotionGesturesHandler.SINGLETON_value;
    }
    

    public static function getInstance():MovedMotionGesturesHandler {
        return MovedMotionGesturesHandler.SINGLETON;
    }
    

    public function MovedMotionGesturesHandler() {
        super();
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var baseMotionGestureEventListener:BaseMotionGestureEventListener = (eventListenerInterface as BaseMotionGestureEventListener);
        baseMotionGestureEventListener.onMotionGestureEvent((eventObject as MotionGestureEvent));
    }
    }
}

