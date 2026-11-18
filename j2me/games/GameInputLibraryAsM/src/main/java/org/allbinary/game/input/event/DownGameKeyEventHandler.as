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

    public class DownGameKeyEventHandler extends DownGameKeyEventHandlerBase {
    private static var instance_value:DownGameKeyEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():DownGameKeyEventHandler {
        if (!DownGameKeyEventHandler.instance_set) {
            DownGameKeyEventHandler.instance_set = true;
            DownGameKeyEventHandler.instance_value = new DownGameKeyEventHandler();
        }
        return DownGameKeyEventHandler.instance_value;
    }
    private static var instanceArray_value:Vector.<DownGameKeyEventHandlerBase>;
    private static var instanceArray_set:Boolean = false;
    private static function get instanceArray():Vector.<DownGameKeyEventHandlerBase> {
        if (!DownGameKeyEventHandler.instanceArray_set) {
            DownGameKeyEventHandler.instanceArray_set = true;
            DownGameKeyEventHandler.instanceArray_value = new <DownGameKeyEventHandlerBase>[new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase(), new DownGameKeyEventHandlerBase()];
        }
        return DownGameKeyEventHandler.instanceArray_value;
    }
        private var playerInputIdFactory:LocalPlayerInputIdFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsDownGameKeyEventHandler():void {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
        }
    

    public static function getInstance():DownGameKeyEventHandler {
        return DownGameKeyEventHandler.instance;
    }
    

    public function getInstanceForDevice(deviceId:int):DownGameKeyEventHandlerBase {
        var playerInputId:int = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return DownGameKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function getInstanceForPlayer(playerInputId:int):DownGameKeyEventHandlerBase {
        return DownGameKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function DownGameKeyEventHandler() {
        super();
        this.initFieldsDownGameKeyEventHandler();
    }
    

    override public function removeAllListeners():void {
        super.removeAllListeners();
        for (var index:int = int(DownGameKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            DownGameKeyEventHandler.instanceArray[index].removeAllListeners();
        }
    }
    

    override public function removeListenerSingleThreaded(eventListenerInterface:EventListenerInterface):void {
        super.removeListenerSingleThreaded(eventListenerInterface);
        for (var index:int = int(DownGameKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            DownGameKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    override public function removeListener(eventListenerInterface:EventListenerInterface):void {
        super.removeListener(eventListenerInterface);
        for (var index:int = int(DownGameKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            DownGameKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface);
        }
    }
    }
}

