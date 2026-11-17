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
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent;
    import org.allbinary.util.ABHashtable;

    public class NoHardware implements HardwareInterface {
    private static var instance_value:HardwareInterface;
    private static var instance_set:Boolean = false;
    private static function get instance():HardwareInterface {
        if (!NoHardware.instance_set) {
            NoHardware.instance_set = true;
            NoHardware.instance_value = new NoHardware();
        }
        return NoHardware.instance_value;
    }
    

    public static function getInstance():HardwareInterface {
        return NoHardware.instance;
    }
    

    public function getComponent(index:int):HardwareComponentInterface {
        return NoHardwareComponent.getInstance();
    }
    

    public function toString():String {
        return "No Hardware";
    }
    

    public function compareTo(hardwareInterface:HardwareInterface):Boolean {
        return true;
    }
    

    public function difference(hardwareInterface:HardwareInterface):ABHashtable {
        return StdUtil.getInstance().NULL_TABLE;
    }
    }
}

