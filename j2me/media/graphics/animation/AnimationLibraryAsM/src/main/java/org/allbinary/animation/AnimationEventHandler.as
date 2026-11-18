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
package org.allbinary.animation {
    import org.allbinary.logic.util.event.handler.BasicEventHandler;

    public class AnimationEventHandler extends BasicEventHandler {
    private static var eventHandler_value:AnimationEventHandler;
    private static var eventHandler_set:Boolean = false;
    private static function get eventHandler():AnimationEventHandler {
        if (!AnimationEventHandler.eventHandler_set) {
            AnimationEventHandler.eventHandler_set = true;
            AnimationEventHandler.eventHandler_value = new AnimationEventHandler();
        }
        return AnimationEventHandler.eventHandler_value;
    }
    

    public function AnimationEventHandler() {
        super();
    }
    

    public static function getInstance():AnimationEventHandler {
        return AnimationEventHandler.eventHandler;
    }
    }
}

