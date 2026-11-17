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
package org.allbinary.util {
    import java.util.JEnumeration;

    //ArkTs does not have this.  So this is for the ArkTs build.
    public class EnumerationUtil {
    private static var instance_value:EnumerationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():EnumerationUtil {
        if (!EnumerationUtil.instance_set) {
            EnumerationUtil.instance_set = true;
            EnumerationUtil.instance_value = new EnumerationUtil();
        }
        return EnumerationUtil.instance_value;
    }
    

    public static function getInstance():EnumerationUtil {
        return EnumerationUtil.instance;
    }
    

    public function hasMoreElements(enumeration:JEnumeration):Boolean {
        return enumeration.hasMoreElements();
    }
    

    public function nextElement(enumeration:JEnumeration):Object {
        return enumeration.nextElement();
    }
    

    public function getAsArray(enumeration:JEnumeration):Vector.<Object> {
        var basicArrayList:BasicArrayList = new BasicArrayListD();
        while (this.hasMoreElements(enumeration)) {
            basicArrayList.add(this.nextElement(enumeration));
        }
        return basicArrayList.toArray();
    }
    }
}

