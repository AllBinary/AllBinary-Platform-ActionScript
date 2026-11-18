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
package org.allbinary.input.event {
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import java.lang.JThread;

    public class VirtualKeyboardEventHandler extends BasicEventHandler {
    private static var gameKeyEventHandler_value:VirtualKeyboardEventHandler;
    private static var gameKeyEventHandler_set:Boolean = false;
    private static function get gameKeyEventHandler():VirtualKeyboardEventHandler {
        if (!VirtualKeyboardEventHandler.gameKeyEventHandler_set) {
            VirtualKeyboardEventHandler.gameKeyEventHandler_set = true;
            VirtualKeyboardEventHandler.gameKeyEventHandler_value = new VirtualKeyboardEventHandler();
        }
        return VirtualKeyboardEventHandler.gameKeyEventHandler_value;
    }
        public var SHOW_EVENT:VirtualKeyboardEvent = null;
        public var HIDE_EVENT:VirtualKeyboardEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsVirtualKeyboardEventHandler():void {
    this.SHOW_EVENT = new VirtualKeyboardEvent(BooleanFactory.getInstance().TRUE);
    this.HIDE_EVENT = new VirtualKeyboardEvent(BooleanFactory.getInstance().FALSE);
        }
    

    public function VirtualKeyboardEventHandler() {
        super();
        this.initFieldsVirtualKeyboardEventHandler();
    }
    

    public static function getInstance():VirtualKeyboardEventHandler {
        return VirtualKeyboardEventHandler.gameKeyEventHandler;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var virtualKeyboardEventListenerInterface:VirtualKeyboardEventListenerInterface = (eventListenerInterface as VirtualKeyboardEventListenerInterface);
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent((eventObject as VirtualKeyboardEvent));
    }
    

    public function open():void {
        try {
            JThread.sleep(120);
            this.fireEvent(this.SHOW_EVENT);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "open", e);
        }
    }
    

    public function close():void {
        try {
            JThread.sleep(120);
            this.fireEvent(this.HIDE_EVENT);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e);
        }
    }
    }
}

