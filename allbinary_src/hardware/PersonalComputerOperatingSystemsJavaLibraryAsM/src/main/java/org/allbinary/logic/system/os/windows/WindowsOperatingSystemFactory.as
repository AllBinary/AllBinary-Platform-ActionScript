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
package org.allbinary.logic.system.os.windows {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.NoOperatingSystem;
    import org.allbinary.logic.system.os.OperatingSystems;
    import org.allbinary.logic.system.os.SystemProperties;
    import org.allbinary.string.CommonStrings;

    public class WindowsOperatingSystemFactory {
    private static var instance_value:WindowsOperatingSystemFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():WindowsOperatingSystemFactory {
        if (!WindowsOperatingSystemFactory.instance_set) {
            WindowsOperatingSystemFactory.instance_set = true;
            WindowsOperatingSystemFactory.instance_value = new WindowsOperatingSystemFactory();
        }
        return WindowsOperatingSystemFactory.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsWindowsOperatingSystemFactory():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():WindowsOperatingSystemFactory {
        return WindowsOperatingSystemFactory.instance;
    }
    

    public function WindowsOperatingSystemFactory() {
        super();
        this.initFieldsWindowsOperatingSystemFactory();
    }
    

    public function getOperatingSystemInstance():GenericOperatingSystem {
        try {
            var operatingSystems:OperatingSystems = OperatingSystems.getInstance();
            var osName:String = SystemProperties.getInstance().getName();
            var operatingSystemInterface:GenericOperatingSystem = null;
            if (JString.compareTo(osName, operatingSystems.WINDOWS_NT) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_10) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_11) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS2000) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_XP) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else if (JString.compareTo(osName, operatingSystems.WINDOWS_VISTA) == 0) {
                operatingSystemInterface = new WindowsOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = new WindowsOS();
                } else {
                    throw new JException("Exception", "Specific Windows OS Not Supported: " + osName);
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

