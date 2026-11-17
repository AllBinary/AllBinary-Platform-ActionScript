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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.string.CommonStrings;

    public class SystemHardwareFactory {
    private static var instance_value:SystemHardwareFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():SystemHardwareFactory {
        if (!SystemHardwareFactory.instance_set) {
            SystemHardwareFactory.instance_set = true;
            SystemHardwareFactory.instance_value = new SystemHardwareFactory();
        }
        return SystemHardwareFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var hardwareInterface:HardwareInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsSystemHardwareFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.hardwareInterface = NoHardware.getInstance();
        }
    

    public static function getInstance():SystemHardwareFactory {
        return SystemHardwareFactory.instance;
    }
    

    public function SystemHardwareFactory() {
        super();
        this.initFieldsSystemHardwareFactory();
    }
    

    public function getInstance1(operatingSystemInterface:GenericOperatingSystem):HardwareInterface {
        try {
            if (this.hardwareInterface == NoHardware.getInstance()) {
                this.hardwareInterface = HardwareFactory.getInstance().getInstance1(operatingSystemInterface);
            }
            this.logUtil.putF("Found Hardware", this, this.commonStrings.CONSTRUCTOR);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
        }
        return this.hardwareInterface;
    }
    

    public static function static_toString():String {
        var systemHardwareFactory:SystemHardwareFactory = SystemHardwareFactory.getInstance();
        var osBuffer:StringMaker = new StringMaker();
        osBuffer.append("Hardware Info: \n");
        if (systemHardwareFactory.hardwareInterface != null) {
            osBuffer.append(systemHardwareFactory.hardwareInterface.toString());
        } else {
            osBuffer.append(StringUtil.getInstance().NULL_STRING);
        }
        return osBuffer.toString();
    }
    }
}

