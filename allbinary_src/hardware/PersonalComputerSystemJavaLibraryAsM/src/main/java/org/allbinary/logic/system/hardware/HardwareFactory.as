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
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.OperatingSystems;
    import org.allbinary.logic.system.hardware.linux.LinuxHardware;
    import org.allbinary.logic.system.hardware.windows.WindowsHardware;

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
    

    public static function getInstance():HardwareFactory {
        return HardwareFactory.instance;
    }
    

    public function HardwareFactory() {
        super();
    }
    

    public static function getInstance1(os:GenericOperatingSystem):HardwareInterface {
        try {
            var operatingSystems:OperatingSystems = OperatingSystems.getInstance();
            if (JSystem.compareToObject(os.getName(), operatingSystems.LINUX) == 0) {
                return (new LinuxHardware() as HardwareInterface);
            } else if (os.getName().indexOf(operatingSystems.WINDOWS) >= 0) {
                return (new WindowsHardware() as HardwareInterface);
            }
            throw new JException("Exception", "No Hardware Imp for: " + os.getName());
        } catch (e:*) {
            throw e;
        }
    }
    }
}

