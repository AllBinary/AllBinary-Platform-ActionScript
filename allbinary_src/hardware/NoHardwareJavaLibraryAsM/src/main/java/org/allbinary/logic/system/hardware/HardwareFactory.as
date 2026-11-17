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
package org.allbinary.logic.system.hardware {
    import org.allbinary.logic.system.os.OperatingSystemInterface;

    public class HardwareFactory {
    private static var instance_value:HardwareFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():HardwareFactory {
        if (!HardwareFactory.instance_set) {
            HardwareFactory.instance_set = true;
            HardwareFactory.instance_value = new HardwareFactory();
        }
        return HardwareFactory.instance_value;
    }
        private var SINGLETON:HardwareInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsHardwareFactory():void {
    this.SINGLETON = NoHardware.getInstance();
        }
    

    public static function getInstance():HardwareFactory {
        return HardwareFactory.instance;
    }
    

    public function HardwareFactory() {
        super();
        this.initFieldsHardwareFactory();
    }
    

    public function getInstance1(os:OperatingSystemInterface):HardwareInterface {
        try {
            return this.SINGLETON;
        } catch (e:*) {
            throw e;
        }
    }
    }
}

