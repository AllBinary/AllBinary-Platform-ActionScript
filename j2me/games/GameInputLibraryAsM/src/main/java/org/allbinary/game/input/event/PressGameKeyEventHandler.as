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
package org.allbinary.game.input.event {
    import org.allbinary.game.input.PlayerGameInput;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class PressGameKeyEventHandler extends BasicEventHandler {
    private static var instance_value:PressGameKeyEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():PressGameKeyEventHandler {
        if (!PressGameKeyEventHandler.instance_set) {
            PressGameKeyEventHandler.instance_set = true;
            PressGameKeyEventHandler.instance_value = new PressGameKeyEventHandler();
        }
        return PressGameKeyEventHandler.instance_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsPressGameKeyEventHandler():void {
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():PressGameKeyEventHandler {
        return PressGameKeyEventHandler.instance;
    }
    

    public function PressGameKeyEventHandler() {
        super();
        this.initFieldsPressGameKeyEventHandler();
    }
    

    public function addListener(playerGameInput:PlayerGameInput):void {
        if (!this.list.contains(playerGameInput)) {
            this.list.add(playerGameInput);
        }
    }
    

    override public function removeAllListeners():void {
        this.list.clear();
        super.removeAllListeners();
    }
    

    override public function removeListener(eventListenerInterface:EventListenerInterface):void {
        this.list.remove(eventListenerInterface);
        super.removeListener(eventListenerInterface);
    }
    

    override public function fireEvent(eventObject:AllBinaryEventObject):void {
        for (var index:int = this.list.size(); --index >= 0; ) {
            try {
                var playerGameInput:PlayerGameInput = (this.list.objectArray[index] as PlayerGameInput);
                playerGameInput.onPressGameKeyEvent((eventObject as GameKeyEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        super.fireEvent(eventObject);
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var pressGameKeyEventListenerInterface:PressGameKeyEventListenerInterface = ((eventListenerInterface as PressGameKeyEventListenerInterface));
        pressGameKeyEventListenerInterface.onPressGameKeyEvent((eventObject as GameKeyEvent));
    }
    }
}

