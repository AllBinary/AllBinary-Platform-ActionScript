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
package org.allbinary.logic.system.os {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;

    public class OperatingSystemFactory {
    private static var instance_value:OperatingSystemFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():OperatingSystemFactory {
        if (!OperatingSystemFactory.instance_set) {
            OperatingSystemFactory.instance_set = true;
            OperatingSystemFactory.instance_value = new OperatingSystemFactory();
        }
        return OperatingSystemFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var genericOperatingSystem:GenericOperatingSystem = null;

        // Java field initializers run after the base constructor
        private function initFieldsOperatingSystemFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM;
        }
    

    public static function getInstance():OperatingSystemFactory {
        return OperatingSystemFactory.instance;
    }
    

    public function OperatingSystemFactory() {
        super();
        this.initFieldsOperatingSystemFactory();
    }
    

    public function getOperatingSystemInstance():GenericOperatingSystem {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        try {
            var osString:String = new StringMaker().append("OperatingSystem Info: ").append(this.genericOperatingSystem.toString()).toString();
            trace(osString);
            this.logUtil.putF(osString, this, commonStrings.GET_INSTANCE);
        } catch (e:*) {
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
        }
        return this.genericOperatingSystem;
    }
    }
}

