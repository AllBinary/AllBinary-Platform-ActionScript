/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class RawKeyEventHandler {
    private static var instance_value:RawKeyEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():RawKeyEventHandler {
        if (!RawKeyEventHandler.instance_set) {
            RawKeyEventHandler.instance_set = true;
            RawKeyEventHandler.instance_value = new RawKeyEventHandler();
        }
        return RawKeyEventHandler.instance_value;
    }
    private static const TOTAL_LISTENERS:String = "Total Listeners: ";
    private static const LISTENER_LABEL:String = " Listener: ";
        public var logUtil:LogUtil = null;
        public var eventListenerInterfaceList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsRawKeyEventHandler():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public static function getInstance():RawKeyEventHandler {
        return RawKeyEventHandler.instance;
    }
    

    public function RawKeyEventHandler() {
        super();
        this.initFieldsRawKeyEventHandler();
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public function removeAllListeners():void {
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public function addListeners(vector:BasicArrayList):void {
        var eventListenerInterface:RawKeyEventListener = null;
        var size:int = vector.size();
        for (var index:int = 0; index < size; index++) {
            eventListenerInterface = (vector.get_(index) as RawKeyEventListener);
            this.addListener(eventListenerInterface);
        }
    }
    

    public function addListenerSingleThreaded(eventListenerInterface:RawKeyEventListener):void {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public function addListener(eventListenerInterface:RawKeyEventListener):void {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public function removeListenerSingleThreaded(eventListenerInterface:RawKeyEventListener):void {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public function removeListener(eventListenerInterface:RawKeyEventListener):void {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public function fireEvent(keyCode:int, deviceId:int, repeated:Boolean):void {
        var eventListenerInterface:RawKeyEventListener = null;
        var index:int = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get_(index) as RawKeyEventListener);
                this.process(keyCode, deviceId, repeated, eventListenerInterface);
            } catch (e:*) {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
            index++;
        }
    }
    

    public function process(keyCode:int, deviceId:int, repeated:Boolean, eventListenerInterface:RawKeyEventListener):void {
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated);
    }
    

    public function getEventListenerInterfaceListP():BasicArrayList {
        return this.eventListenerInterfaceList;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(RawKeyEventHandler.TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        var eventListenerInterface:RawKeyEventListener = null;
        var index:int = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get_(index) as RawKeyEventListener);
                stringBuffer.append(RawKeyEventHandler.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch (e:*) {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e);
            }
            index++;
        }
        return stringBuffer.toString();
    }
    }
}

