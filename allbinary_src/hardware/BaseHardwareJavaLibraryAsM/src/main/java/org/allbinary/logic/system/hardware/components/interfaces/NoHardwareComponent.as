/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.logic.system.hardware.components.interfaces {
    import org.allbinary.logic.string.StringUtil;

    public class NoHardwareComponent implements HardwareComponentInterface {
    private static var instance_value:NoHardwareComponent;
    private static var instance_set:Boolean = false;
    private static function get instance():NoHardwareComponent {
        if (!NoHardwareComponent.instance_set) {
            NoHardwareComponent.instance_set = true;
            NoHardwareComponent.instance_value = new NoHardwareComponent();
        }
        return NoHardwareComponent.instance_value;
    }
    

    public static function getInstance():NoHardwareComponent {
        return NoHardwareComponent.instance;
    }
    

    public function compareTo(componentInterface:HardwareComponentInterface):Boolean {
        if (this == componentInterface) {
            return true;
        }
        return false;
    }
    

    public function toString():String {
        return StringUtil.getInstance().NULL_STRING;
    }
    }
}

