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
    import java.util.JVector;

    public class VectorUtil {
    private static var instance_value:VectorUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():VectorUtil {
        if (!VectorUtil.instance_set) {
            VectorUtil.instance_set = true;
            VectorUtil.instance_value = new VectorUtil();
        }
        return VectorUtil.instance_value;
    }
    

    public static function getInstance():VectorUtil {
        return VectorUtil.instance;
    }
    

    public function getSize(anyType:Object):int {
        var vector:JVector = (anyType as JVector);
        return vector.size();
    }
    

    public function elementAt(anyType:Object, index:int):Object {
        var vector:JVector = (anyType as JVector);
        return vector.elementAt(index);
    }
    }
}

