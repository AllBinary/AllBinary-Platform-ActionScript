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

    public class ScreenListenerHandler {
    private static var instance_value:ScreenListenerHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():ScreenListenerHandler {
        if (!ScreenListenerHandler.instance_set) {
            ScreenListenerHandler.instance_set = true;
            ScreenListenerHandler.instance_value = new ScreenListenerHandler();
        }
        return ScreenListenerHandler.instance_value;
    }
        private var screenListenerInterface:ScreenListenerInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsScreenListenerHandler():void {
    this.screenListenerInterface = new ScreenEmptyListener();
        }

        public function ScreenListenerHandler() {
            super();
            this.initFieldsScreenListenerHandler();
        }
    

    public static function getInstance():ScreenListenerHandler {
        return ScreenListenerHandler.instance;
    }
    

    public function setListener(screenListenerInterface:ScreenListenerInterface):void {
        this.screenListenerInterface = screenListenerInterface;
    }
    

    public function fireWithState(isFullScreen:Boolean):void {
        this.screenListenerInterface.onFullScreen(isFullScreen);
    }
    

    public function fire():void {
        this.screenListenerInterface.onFullScreenDisplay();
    }
    }
}

