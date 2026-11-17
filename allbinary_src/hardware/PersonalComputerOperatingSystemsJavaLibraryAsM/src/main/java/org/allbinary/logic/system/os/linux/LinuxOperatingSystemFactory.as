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
package org.allbinary.logic.system.os.linux {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.NoOperatingSystem;
    import org.allbinary.logic.system.os.OperatingSystems;
    import org.allbinary.logic.system.os.SystemProperties;
    import org.allbinary.string.CommonStrings;

    public class LinuxOperatingSystemFactory {
    private static var instance_value:LinuxOperatingSystemFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LinuxOperatingSystemFactory {
        if (!LinuxOperatingSystemFactory.instance_set) {
            LinuxOperatingSystemFactory.instance_set = true;
            LinuxOperatingSystemFactory.instance_value = new LinuxOperatingSystemFactory();
        }
        return LinuxOperatingSystemFactory.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsLinuxOperatingSystemFactory():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():LinuxOperatingSystemFactory {
        return LinuxOperatingSystemFactory.instance;
    }
    

    public function LinuxOperatingSystemFactory() {
        super();
        this.initFieldsLinuxOperatingSystemFactory();
    }
    

    public function getOperatingSystemInstance():GenericOperatingSystem {
        try {
            var operatingSystems:OperatingSystems = OperatingSystems.getInstance();
            var osName:String = SystemProperties.getInstance().getName();
            var operatingSystemInterface:GenericOperatingSystem = null;
            if (JString.compareTo(osName, operatingSystems.LINUX) == 0) {
                operatingSystemInterface = new LinuxOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = new LinuxOS();
                } else {
                    throw new JException("Exception", "Specific Linux OS Not Supported: " + osName);
                }
            }
            return operatingSystemInterface;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            return NoOperatingSystem.NO_OPERATING_SYSTEM;
        }
    }
    }
}

