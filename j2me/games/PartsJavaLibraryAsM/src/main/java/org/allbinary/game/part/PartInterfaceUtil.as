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
package org.allbinary.game.part {

    public class PartInterfaceUtil {
    private static var SINGLETON_value:Vector.<PartInterface>;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():Vector.<PartInterface> {
        if (!PartInterfaceUtil.SINGLETON_set) {
            PartInterfaceUtil.SINGLETON_set = true;
            PartInterfaceUtil.SINGLETON_value = new Vector.<PartInterface>(0);
        }
        return PartInterfaceUtil.SINGLETON_value;
    }
    

    public static function getZeroArray():Vector.<PartInterface> {
        return PartInterfaceUtil.SINGLETON;
    }
    }
}

