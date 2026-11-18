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
package org.allbinary.game.midlet {

    public class LicenseLevelUtil {
    private static var instance_value:LicenseLevelUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LicenseLevelUtil {
        if (!LicenseLevelUtil.instance_set) {
            LicenseLevelUtil.instance_set = true;
            LicenseLevelUtil.instance_value = new LicenseLevelUtil();
        }
        return LicenseLevelUtil.instance_value;
    }
    

    public static function getInstance():LicenseLevelUtil {
        return LicenseLevelUtil.instance;
    }
    

    public function getMaxLevel(maxLevel:int, demoLevel:int):int {
        return demoLevel;
    }
    }
}

