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
package org.allbinary.android.input.motion.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class AnalogControllerConfigurationEventHandler extends BasicEventHandler {
    private static var instance_value:AnalogControllerConfigurationEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():AnalogControllerConfigurationEventHandler {
        if (!AnalogControllerConfigurationEventHandler.instance_set) {
            AnalogControllerConfigurationEventHandler.instance_set = true;
            AnalogControllerConfigurationEventHandler.instance_value = new AnalogControllerConfigurationEventHandler();
        }
        return AnalogControllerConfigurationEventHandler.instance_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnalogControllerConfigurationEventHandler():void {
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():AnalogControllerConfigurationEventHandler {
        return AnalogControllerConfigurationEventHandler.instance;
    }
    

    public function AnalogControllerConfigurationEventHandler() {
        super();
        this.initFieldsAnalogControllerConfigurationEventHandler();
    }
    

    public function addListener(analogControllerConfigurationEventListenerInterface:AnalogControllerConfigurationEventListenerInterface):void {
        if (!this.list.contains(analogControllerConfigurationEventListenerInterface)) {
            this.list.add(analogControllerConfigurationEventListenerInterface);
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
                var playerGameInput:AnalogControllerConfigurationEventListenerInterface = (this.list.objectArray[index] as AnalogControllerConfigurationEventListenerInterface);
                playerGameInput.onAnalogControllerConfigurationEvent((eventObject as AnalogControllerConfigurationEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        super.fireEvent(eventObject);
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var analogControllerConfigurationEventListenerInterface:AnalogControllerConfigurationEventListenerInterface = ((eventListenerInterface as AnalogControllerConfigurationEventListenerInterface));
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent((eventObject as AnalogControllerConfigurationEvent));
    }
    }
}

