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
package org.allbinary.graphics {

    public class ResizableListenerHandler {
    private static var instance_value:ResizableListenerHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():ResizableListenerHandler {
        if (!ResizableListenerHandler.instance_set) {
            ResizableListenerHandler.instance_set = true;
            ResizableListenerHandler.instance_value = new ResizableListenerHandler();
        }
        return ResizableListenerHandler.instance_value;
    }
    

    public static function getInstance():ResizableListenerHandler {
        return ResizableListenerHandler.instance;
    }
    

    public function setListener(resizableListenerInterface:ResizableListenerInterface):void {
    }
    

    public function fire(isFullScreen:Boolean):void {
    }
    

    public function fireEvent(value:Boolean):void {
    }
    }
}

