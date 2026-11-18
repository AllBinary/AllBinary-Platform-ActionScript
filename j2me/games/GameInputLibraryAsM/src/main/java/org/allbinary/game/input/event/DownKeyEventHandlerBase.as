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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JInteger;

    public class DownKeyEventHandlerBase extends BasicEventHandler {
    private static const TOTAL_LISTENERS:String = " Total PlayerGameInput Listeners: ";
    private static const LISTENER_LABEL:String = " PlayerGameInput Listener: ";
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsDownKeyEventHandlerBase():void {
    this.list = new BasicArrayListD();
        }
    

    public function DownKeyEventHandlerBase() {
        super();
        this.initFieldsDownKeyEventHandlerBase();
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
    

    override public function removeListenerSingleThreaded(eventListenerInterface:EventListenerInterface):void {
        this.list.remove(eventListenerInterface);
        super.removeListenerSingleThreaded(eventListenerInterface);
    }
    

    override public function removeListener(eventListenerInterface:EventListenerInterface):void {
        this.list.remove(eventListenerInterface);
        super.removeListener(eventListenerInterface);
    }
    

    public function fireEventI(eventObject:*):void {
        for (var index:int = this.list.size(); --index >= 0; ) {
            try {
                var playerGameInput:PlayerGameInput = (this.list.objectArray[index] as PlayerGameInput);
                playerGameInput.onDownKey(eventObject);
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        index = 0;
        var eventListenerInterface:EventListenerInterface = null;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get_(index) as EventListenerInterface);
                this.processI(eventObject, eventListenerInterface);
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
            index++;
        }
    }
    

    public function fireEventForGameKeyEvent(eventObject:GameKeyEvent):void {
        var size:int = this.list.size();
        for (var index:int = size; --index >= 0; ) {
            try {
                var playerGameInput:PlayerGameInput = (this.list.objectArray[index] as PlayerGameInput);
                playerGameInput.onDownKeyEvent(eventObject);
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        index = 0;
        var eventListenerInterface:EventListenerInterface = null;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get_(index) as EventListenerInterface);
                this.processEvent(eventObject, eventListenerInterface);
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
            index++;
        }
    }
    

    public function processI(eventObject:*, eventListenerInterface:EventListenerInterface):void {
        var downKeyEventListenerInterface:DownKeyEventListenerInterface = (eventListenerInterface as DownKeyEventListenerInterface);
        downKeyEventListenerInterface.onDownKey(eventObject);
    }
    

    public function processEvent(eventObject:GameKeyEvent, eventListenerInterface:EventListenerInterface):void {
        var downKeyEventListenerInterface:DownKeyEventListenerInterface = (eventListenerInterface as DownKeyEventListenerInterface);
        downKeyEventListenerInterface.onDownKeyEvent(eventObject);
    }
    

    override public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(DownKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(this.list.size());
        var eventListenerInterface:EventListenerInterface = null;
        for (var index:int = 0; index < this.list.size(); index++) {
            try {
                eventListenerInterface = (this.list.get_(index) as EventListenerInterface);
                stringBuffer.append(DownKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
            }
        }
        return stringBuffer.toString();
    }
    }
}

