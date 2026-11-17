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

    public class NoOperatingSystem extends GenericOperatingSystem {
    private static var NO_OPERATING_SYSTEM_value:GenericOperatingSystem;
    private static var NO_OPERATING_SYSTEM_set:Boolean = false;
    public static function get NO_OPERATING_SYSTEM():GenericOperatingSystem {
        if (!NoOperatingSystem.NO_OPERATING_SYSTEM_set) {
            NoOperatingSystem.NO_OPERATING_SYSTEM_set = true;
            NoOperatingSystem.NO_OPERATING_SYSTEM_value = new GenericOperatingSystem();
        }
        return NoOperatingSystem.NO_OPERATING_SYSTEM_value;
    }
    

    public function NoOperatingSystem() {
        super();
    }
    }
}

