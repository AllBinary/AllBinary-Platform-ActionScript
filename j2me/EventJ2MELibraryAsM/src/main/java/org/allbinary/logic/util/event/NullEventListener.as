/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.logic.util.event {

    public class NullEventListener implements EventListenerInterface {
    private static var NULL_EVENT_LISTENER_value:NullEventListener;
    private static var NULL_EVENT_LISTENER_set:Boolean = false;
    public static function get NULL_EVENT_LISTENER():NullEventListener {
        if (!NullEventListener.NULL_EVENT_LISTENER_set) {
            NullEventListener.NULL_EVENT_LISTENER_set = true;
            NullEventListener.NULL_EVENT_LISTENER_value = new NullEventListener();
        }
        return NullEventListener.NULL_EVENT_LISTENER_value;
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
    }
    }
}

