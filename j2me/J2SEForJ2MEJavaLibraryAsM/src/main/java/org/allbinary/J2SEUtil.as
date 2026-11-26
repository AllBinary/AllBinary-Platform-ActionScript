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
package org.allbinary {
    import java.util.JHashMap;
    import java.util.JMap;
    import java.util.JSet;

    //J2SEForJ2ME
    public class J2SEUtil {
    private static var instance_value:J2SEUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():J2SEUtil {
        if (!J2SEUtil.instance_set) {
            J2SEUtil.instance_set = true;
            J2SEUtil.instance_value = new J2SEUtil();
        }
        return J2SEUtil.instance_value;
    }
    

    public static function getInstance():J2SEUtil {
        return J2SEUtil.instance;
    }
    

    public function getHashMapAsArray(hashMap:JHashMap):Vector.<Object> {
        var objectArray:Vector.<Object> = hashMap.keySet().toArray();
        return objectArray;
    }
    

    public function getMapAsArray(map:JMap):Vector.<Object> {
        var objectArray:Vector.<Object> = map.keySet().toArray();
        return objectArray;
    }
    

    public function getSetAsArray(set_:JSet):Vector.<Object> {
        var objectArray:Vector.<Object> = set_.toArray();
        return objectArray;
    }
    }
}

