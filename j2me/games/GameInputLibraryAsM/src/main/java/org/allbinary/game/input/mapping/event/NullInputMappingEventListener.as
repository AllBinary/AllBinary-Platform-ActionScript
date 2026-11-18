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
package org.allbinary.game.input.mapping.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class NullInputMappingEventListener implements InputMappingEventListenerInterface {
    private static var NULL_INPUT_MAPPING_EVENT_LISTENER_value:NullInputMappingEventListener;
    private static var NULL_INPUT_MAPPING_EVENT_LISTENER_set:Boolean = false;
    public static function get NULL_INPUT_MAPPING_EVENT_LISTENER():NullInputMappingEventListener {
        if (!NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER_set) {
            NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER_set = true;
            NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER_value = new NullInputMappingEventListener();
        }
        return NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER_value;
    }
    

    public function onInputMappingEvent(inputMappingEvent:InputMappingEvent):void {
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
    }
    }
}

