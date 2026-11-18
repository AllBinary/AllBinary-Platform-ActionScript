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
package org.allbinary.android.input.motion {
    import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent;
    import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler;
    import org.allbinary.logic.math.ScaleFactorFactory;

    public class AnalogControllerConfigurationFactory {
    private static var instance_value:AnalogControllerConfigurationFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AnalogControllerConfigurationFactory {
        if (!AnalogControllerConfigurationFactory.instance_set) {
            AnalogControllerConfigurationFactory.instance_set = true;
            AnalogControllerConfigurationFactory.instance_value = new AnalogControllerConfigurationFactory();
        }
        return AnalogControllerConfigurationFactory.instance_value;
    }
        public var SCALE_FACTOR:int = 0;
        public var SCALE_VALUE:int = 0;
        private var available:Boolean = false;
        private var analogControllerConfigurationEvent:AnalogControllerConfigurationEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnalogControllerConfigurationFactory():void {
    this.SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.SCALE_VALUE = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
    this.available = false;
    this.analogControllerConfigurationEvent = new AnalogControllerConfigurationEvent(this);
        }
    

    public static function getInstance():AnalogControllerConfigurationFactory {
        return AnalogControllerConfigurationFactory.instance;
    }
    

    public function AnalogControllerConfigurationFactory() {
        super();
        this.initFieldsAnalogControllerConfigurationFactory();
    }
    

    public function isAvailable():Boolean {
        return this.available;
    }
    

    public function setAvailable(available:Boolean):void {
        this.available = available;
        AnalogControllerConfigurationEventHandler.getInstance().fireEvent(this.analogControllerConfigurationEvent);
    }
    }
}

