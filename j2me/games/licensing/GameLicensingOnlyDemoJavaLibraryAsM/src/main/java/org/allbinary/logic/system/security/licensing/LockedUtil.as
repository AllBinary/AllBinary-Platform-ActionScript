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
package org.allbinary.logic.system.security.licensing {

    public class LockedUtil implements LockedUtilInterface {
    private static var instance_value:LockedUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LockedUtil {
        if (!LockedUtil.instance_set) {
            LockedUtil.instance_set = true;
            LockedUtil.instance_value = new LockedUtil();
        }
        return LockedUtil.instance_value;
    }
    

    public static function getInstance():LockedUtil {
        return LockedUtil.instance;
    }
    

    public function isLocked():Boolean {
        return true;
    }
    

    public function isLockedFeature(lockableFeatrue:LockableFeature):Boolean {
        return true;
    }
    }
}

