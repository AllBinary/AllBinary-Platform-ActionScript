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
    import org.allbinary.logic.communication.log.Log;
    import org.allbinary.logic.communication.log.LogFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory;
    import org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory;
    import org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory;
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
        private var commonStrings:CommonStrings = null;
        private var genericOperatingSystem:GenericOperatingSystem = null;
        private var hasDetected:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsOperatingSystemFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM;
    this.hasDetected = false;
        }
    

    public static function getInstance():OperatingSystemFactory {
        return OperatingSystemFactory.instance;
    }
    

    public function OperatingSystemFactory() {
        super();
        this.initFieldsOperatingSystemFactory();
    }
    

    public function getOperatingSystemInstance():GenericOperatingSystem {
        try {
            var operatingSystems:OperatingSystems = OperatingSystems.getInstance();
            var systemProperties:SystemProperties = SystemProperties.getInstance();
            var osName:String = systemProperties.getName();
            var osArch:String = systemProperties.getArch();
            var osVersion:String = systemProperties.getVersion();
            if (!this.hasDetected) {
                this.logUtil.putF("osName: " + osName, this, this.commonStrings.GET_INSTANCE);
                this.hasDetected = true;
                if (JString.indexOf(osName, operatingSystems.LINUX) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Linux OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else if (JString.indexOf(osName, operatingSystems.WINDOWS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Windows OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else if (JString.indexOf(osName, operatingSystems.SOLARIS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Solaris OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else {
                    throw new JException("Exception", new StringMaker().append("OS Not Supported: ").append(osName).toString());
                }
                var log:Log = LogFactory.getInstanceF(new StringMaker().append("OperatingSystem Info: ").append(StringUtil.getInstance().toString1(this.genericOperatingSystem)).toString(), this, this.commonStrings.GET_INSTANCE);
                trace(log.toString());
                this.logUtil.putL(log);
            }
            return this.genericOperatingSystem;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_INSTANCE, e);
            }
            return NoOperatingSystem.NO_OPERATING_SYSTEM;
        }
    }
    }
}

