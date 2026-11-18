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

    public class DownKeyEventHandler extends DownKeyEventHandlerBase {
    private static var instance_value:DownKeyEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():DownKeyEventHandler {
        if (!DownKeyEventHandler.instance_set) {
            DownKeyEventHandler.instance_set = true;
            DownKeyEventHandler.instance_value = new DownKeyEventHandler();
        }
        return DownKeyEventHandler.instance_value;
    }
    private static var instanceArray_value:Vector.<DownKeyEventHandlerBase>;
    private static var instanceArray_set:Boolean = false;
    private static function get instanceArray():Vector.<DownKeyEventHandlerBase> {
        if (!DownKeyEventHandler.instanceArray_set) {
            DownKeyEventHandler.instanceArray_set = true;
            DownKeyEventHandler.instanceArray_value = new <DownKeyEventHandlerBase>[new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase(), new DownKeyEventHandlerBase()];
        }
        return DownKeyEventHandler.instanceArray_value;
    }
        private var playerInputIdFactory:LocalPlayerInputIdFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsDownKeyEventHandler():void {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
        }
    

    public static function getInstance():DownKeyEventHandler {
        return DownKeyEventHandler.instance;
    }
    

    public function getInstanceForDevice(deviceId:int):DownKeyEventHandlerBase {
        var playerInputId:int = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return DownKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function getInstanceForPlayer(playerInputId:int):DownKeyEventHandlerBase {
        return DownKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function DownKeyEventHandler() {
        super();
        this.initFieldsDownKeyEventHandler();
    }
    

    override public function removeAllListeners():void {
        super.removeAllListeners();
        for (var index:int = int(DownKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            DownKeyEventHandler.instanceArray[index].removeAllListeners();
        }
    }
    

    override public function removeListenerSingleThreaded(eventListenerInterface:EventListenerInterface):void {
        super.removeListenerSingleThreaded(eventListenerInterface);
        for (var index:int = int(DownKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            DownKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    override public function removeListener(eventListenerInterface:EventListenerInterface):void {
        super.removeListener(eventListenerInterface);
        for (var index:int = int(DownKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            DownKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface);
        }
    }
    }
}

