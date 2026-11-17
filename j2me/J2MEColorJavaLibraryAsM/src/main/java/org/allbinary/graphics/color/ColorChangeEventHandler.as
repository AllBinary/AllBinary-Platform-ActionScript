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
package org.allbinary.graphics.color {
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class ColorChangeEventHandler extends BasicEventHandler {
    private static var eventHandler_value:ColorChangeEventHandler;
    private static var eventHandler_set:Boolean = false;
    private static function get eventHandler():ColorChangeEventHandler {
        if (!ColorChangeEventHandler.eventHandler_set) {
            ColorChangeEventHandler.eventHandler_set = true;
            ColorChangeEventHandler.eventHandler_value = new ColorChangeEventHandler();
        }
        return ColorChangeEventHandler.eventHandler_value;
    }
    

    public function ColorChangeEventHandler() {
        super();
    }
    

    public static function getInstance():ColorChangeEventHandler {
        return ColorChangeEventHandler.eventHandler;
    }
    }
}

