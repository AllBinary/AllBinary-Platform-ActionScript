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
package org.allbinary.layer.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class LayerManagerEventHandler extends BasicEventHandler {
    private static var instance_value:LayerManagerEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():LayerManagerEventHandler {
        if (!LayerManagerEventHandler.instance_set) {
            LayerManagerEventHandler.instance_set = true;
            LayerManagerEventHandler.instance_value = new LayerManagerEventHandler();
        }
        return LayerManagerEventHandler.instance_value;
    }
    private static function set instance(value:LayerManagerEventHandler):void {
        LayerManagerEventHandler.instance_set = true;
        LayerManagerEventHandler.instance_value = value;
    }
        private var list:BasicArrayList = null;
        public var CREATE:String = null;
        public var DELETE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerManagerEventHandler():void {
    this.list = new BasicArrayListD();
    this.CREATE = "Create";
    this.DELETE = "Delete";
        }
    

    public static function getInstance():LayerManagerEventHandler {
        return LayerManagerEventHandler.instance;
    }
    

    public function LayerManagerEventHandler() {
        super();
        this.initFieldsLayerManagerEventHandler();
    }
    

    public function addListener(layerManagerEventListener:LayerManagerEventListener):void {
        if (!this.list.contains(layerManagerEventListener)) {
            this.list.add(layerManagerEventListener);
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
                var layerManagerEventListener:LayerManagerEventListener = (this.list.objectArray[index] as LayerManagerEventListener);
                layerManagerEventListener.onCreateLayerManagerEvent((eventObject as LayerManagerEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        super.fireEvent(eventObject);
    }
    

    public function fireDeleteEvent(eventObject:AllBinaryEventObject):void {
        for (var index:int = this.list.size(); --index >= 0; ) {
            try {
                var layerManagerEventListener:LayerManagerEventListener = (this.list.objectArray[index] as LayerManagerEventListener);
                layerManagerEventListener.onDeleteLayerManagerEvent((eventObject as LayerManagerEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        var eventListenerInterfaceList:BasicArrayList = this.eventListenerInterfaceList;
        var eventListenerInterface:EventListenerInterface = null;
        var layerManagerEventListenerInterface:LayerManagerEventListenerInterface = null;
        var listenerIndex:int = 0;
        while (listenerIndex < eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (eventListenerInterfaceList.objectArray[listenerIndex] as EventListenerInterface);
                layerManagerEventListenerInterface = ((eventListenerInterface as LayerManagerEventListenerInterface));
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent((eventObject as LayerManagerEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
            listenerIndex++;
        }
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var layerManagerEventListenerInterface:LayerManagerEventListenerInterface = ((eventListenerInterface as LayerManagerEventListenerInterface));
        layerManagerEventListenerInterface.onCreateLayerManagerEvent((eventObject as LayerManagerEvent));
    }
    }
}

