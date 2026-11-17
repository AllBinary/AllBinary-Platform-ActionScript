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
package org.allbinary.logic.util.event.handler {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class BasicEventHandler implements BasicEventHandlerInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var eventStrings:EventStrings = null;
        public var eventListenerInterfaceList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicEventHandler():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.eventStrings = EventStrings.getInstance();
    
        }
    

    public function BasicEventHandler() {
        super();
        this.initFieldsBasicEventHandler();
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public function removeAllListeners():void {
        this.eventListenerInterfaceList = new BasicArrayListD();
    }
    

    public function addListeners(vector:BasicArrayList):void {
        var eventListenerInterface:EventListenerInterface = null;
        var size:int = vector.size();
        for (var index:int = 0; index < size; index++) {
            eventListenerInterface = (vector.get_(index) as EventListenerInterface);
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    public function removeListeners(vector:BasicArrayList):void {
        var eventListenerInterface:EventListenerInterface = null;
        var size:int = vector.size();
        for (var index:int = 0; index < size; index++) {
            eventListenerInterface = (vector.get_(index) as EventListenerInterface);
            this.removeListener(eventListenerInterface);
        }
    }
    

    public function addListenerSingleThreaded(eventListenerInterface:EventListenerInterface):void {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public function addListenerInterface(eventListenerInterface:EventListenerInterface):void {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    public function removeListenerSingleThreaded(eventListenerInterface:EventListenerInterface):void {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public function removeListener(eventListenerInterface:EventListenerInterface):void {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    public function fireEvent(eventObject:AllBinaryEventObject):void {
        var eventListenerInterface:EventListenerInterface = null;
        var index:int = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get_(index) as EventListenerInterface);
                this.process(eventObject, eventListenerInterface);
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.eventStrings.FIRE_EVENT, e);
            }
            index++;
        }
    }
    

    public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        eventListenerInterface.onEvent(eventObject);
    }
    

    public function getEventListenerInterfaceListP():BasicArrayList {
        return this.eventListenerInterfaceList;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.eventStrings.TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        var eventListenerInterface:EventListenerInterface = null;
        var index:int = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get_(index) as EventListenerInterface);
                stringBuffer.append(this.eventStrings.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
            }
            index++;
        }
        return stringBuffer.toString();
    }
    }
}

