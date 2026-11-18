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

    public class BasicMotionGesturesHandler extends BasicEventHandler {
    private static var SINGLETON_value:BasicMotionGesturesHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():BasicMotionGesturesHandler {
        if (!BasicMotionGesturesHandler.SINGLETON_set) {
            BasicMotionGesturesHandler.SINGLETON_set = true;
            BasicMotionGesturesHandler.SINGLETON_value = new BasicMotionGesturesHandler();
        }
        return BasicMotionGesturesHandler.SINGLETON_value;
    }
    

    public static function getInstance():BasicMotionGesturesHandler {
        return BasicMotionGesturesHandler.SINGLETON;
    }
    

    public function BasicMotionGesturesHandler() {
        super();
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var baseMotionGestureEventListener:BaseMotionGestureEventListener = (eventListenerInterface as BaseMotionGestureEventListener);
        baseMotionGestureEventListener.onMotionGestureEvent((eventObject as MotionGestureEvent));
    }
    }
}

