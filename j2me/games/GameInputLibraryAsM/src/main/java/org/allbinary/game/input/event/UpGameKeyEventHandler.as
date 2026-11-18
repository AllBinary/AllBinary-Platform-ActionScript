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

    public class UpGameKeyEventHandler extends UpGameKeyEventHandlerBase {
    private static var instance_value:UpGameKeyEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():UpGameKeyEventHandler {
        if (!UpGameKeyEventHandler.instance_set) {
            UpGameKeyEventHandler.instance_set = true;
            UpGameKeyEventHandler.instance_value = new UpGameKeyEventHandler();
        }
        return UpGameKeyEventHandler.instance_value;
    }
    private static var instanceArray_value:Vector.<UpGameKeyEventHandlerBase>;
    private static var instanceArray_set:Boolean = false;
    private static function get instanceArray():Vector.<UpGameKeyEventHandlerBase> {
        if (!UpGameKeyEventHandler.instanceArray_set) {
            UpGameKeyEventHandler.instanceArray_set = true;
            UpGameKeyEventHandler.instanceArray_value = new <UpGameKeyEventHandlerBase>[new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase(), new UpGameKeyEventHandlerBase()];
        }
        return UpGameKeyEventHandler.instanceArray_value;
    }
        private var playerInputIdFactory:LocalPlayerInputIdFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsUpGameKeyEventHandler():void {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
        }
    

    public static function getInstance():UpGameKeyEventHandler {
        return UpGameKeyEventHandler.instance;
    }
    

    public function getInstanceForDevice(deviceId:int):UpGameKeyEventHandlerBase {
        var playerInputId:int = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return UpGameKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function getInstanceForPlayer(playerInputId:int):UpGameKeyEventHandlerBase {
        return UpGameKeyEventHandler.instanceArray[playerInputId];
    }
    

    public function UpGameKeyEventHandler() {
        super();
        this.initFieldsUpGameKeyEventHandler();
    }
    

    override public function removeAllListeners():void {
        super.removeAllListeners();
        for (var index:int = int(UpGameKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            UpGameKeyEventHandler.instanceArray[index].removeAllListeners();
        }
    }
    

    override public function removeListenerSingleThreaded(eventListenerInterface:EventListenerInterface):void {
        super.removeListenerSingleThreaded(eventListenerInterface);
        for (var index:int = int(UpGameKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            UpGameKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    override public function removeListener(eventListenerInterface:EventListenerInterface):void {
        super.removeListener(eventListenerInterface);
        for (var index:int = int(UpGameKeyEventHandler.instanceArray.length - 1); index >= 0; index--) {
            UpGameKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface);
        }
    }
    }
}

