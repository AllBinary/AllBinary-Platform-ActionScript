/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
package org.allbinary.logic {

    public class ABSystemWrapper {
    private static var instance_value:ABSystemWrapper;
    private static var instance_set:Boolean = false;
    private static function get instance():ABSystemWrapper {
        if (!ABSystemWrapper.instance_set) {
            ABSystemWrapper.instance_set = true;
            ABSystemWrapper.instance_value = new ABSystemWrapper();
        }
        return ABSystemWrapper.instance_value;
    }
    

    public static function getInstance():ABSystemWrapper {
        return ABSystemWrapper.instance;
    }
    

    public function arraycopy(src:Object, srcPos:int, dest:Object, destPos:int, length:int):void {
        JSystem.arraycopy(src, srcPos, dest, destPos, length);
    }
    

    public function currentTimeMillis():Number {
        return JSystem.currentTimeMillis();
    }
    }
}

