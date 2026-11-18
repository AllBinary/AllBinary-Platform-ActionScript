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
package org.allbinary.view.event {
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class ViewPositionEventHandler extends BasicEventHandler {
    private static var SINGLETON_value:ViewPositionEventHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():ViewPositionEventHandler {
        if (!ViewPositionEventHandler.SINGLETON_set) {
            ViewPositionEventHandler.SINGLETON_set = true;
            ViewPositionEventHandler.SINGLETON_value = new ViewPositionEventHandler();
        }
        return ViewPositionEventHandler.SINGLETON_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsViewPositionEventHandler():void {
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():ViewPositionEventHandler {
        return ViewPositionEventHandler.SINGLETON;
    }
    

    public function ViewPositionEventHandler() {
        super();
        this.initFieldsViewPositionEventHandler();
    }
    

    public function addListener(layerInterface:AllBinaryLayer):void {
        if (!this.list.contains(layerInterface)) {
            this.list.add(layerInterface);
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
                var layerInterface:AllBinaryLayer = (this.list.objectArray[index] as AllBinaryLayer);
                layerInterface.onChangeEvent((eventObject as ViewPositionEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        super.fireEvent(eventObject);
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var viewPositionEventListenerInterface:ViewPositionEventListenerInterface = ((eventListenerInterface as ViewPositionEventListenerInterface));
        viewPositionEventListenerInterface.onChangeEvent((eventObject as ViewPositionEvent));
    }
    }
}

