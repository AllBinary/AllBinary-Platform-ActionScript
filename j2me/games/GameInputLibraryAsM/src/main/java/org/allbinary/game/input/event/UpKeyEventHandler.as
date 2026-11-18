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
    import org.allbinary.game.input.LocalPlayerInputIdFactory;
    import org.allbinary.logic.util.event.EventListenerInterface;

    public class UpKeyEventHandler extends UpKeyEventHandlerBase {
    private static var instance_value:UpKeyEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():UpKeyEventHandler {
        if (!UpKeyEventHandler.instance_set) {
            UpKeyEventHandler.instance_set = true;
            UpKeyEventHandler.instance_value = new UpKeyEventHandler();
        }
        return UpKeyEventHandler.instance_value;
    }
    private static var instanceArray_value:Vector.<UpKeyEventHandlerBase>;
    private static var instanceArray_set:Boolean = false;
    private static function get instanceArray():Vector.<UpKeyEventHandlerBase> {
        if (!UpKeyEventHandler.instanceArray_set) {
            UpKeyEventHandler.instanceArray_set = true;
            UpKeyEventHandler.instanceArray_value = new <UpKeyEventHandlerBase>[new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase(), new UpKeyEventHandlerBase()];
        }
        return UpKeyEventHandler.instanceArray_value;
    }
        private var playerInputIdFactory:LocalPlayerInputIdFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsUpKeyEventHandler():void {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
        }
    

    public static function getInstance():UpKeyEventHandler {
        return UpKeyEventHandler.instance;
    }
    

    public function getInstanceForDevice(deviceId:int):UpKeyEventHandlerBase {
        var playerInputId:int = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return UpKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function getInstanceForPlayer(playerInputId:int):UpKeyEventHandlerBase {
        return UpKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function UpKeyEventHandler() {
        super();
        this.initFieldsUpKeyEventHandler();
    }
    

    override public function removeAllListeners():void {
        super.removeAllListeners();
        for (var index:int = int(UpKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            UpKeyEventHandler.instanceArray[index].removeAllListeners();
        }
    }
    

    override public function removeListenerSingleThreaded(eventListenerInterface:EventListenerInterface):void {
        super.removeListenerSingleThreaded(eventListenerInterface);
        for (var index:int = int(UpKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            UpKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    override public function removeListener(eventListenerInterface:EventListenerInterface):void {
        super.removeListener(eventListenerInterface);
        for (var index:int = int(UpKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            UpKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface);
        }
    }
    }
}

