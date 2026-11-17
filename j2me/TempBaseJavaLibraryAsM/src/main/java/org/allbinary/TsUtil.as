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
    import java.lang.JFloat;
    import java.lang.JDouble;

    //TempBase
    public class TsUtil {
    private static var instance_value:TsUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():TsUtil {
        if (!TsUtil.instance_set) {
            TsUtil.instance_set = true;
            TsUtil.instance_value = new TsUtil();
        }
        return TsUtil.instance_value;
    }
    

    public static function getInstance():TsUtil {
        return TsUtil.instance;
    }
    

    public function longBitsToDouble(bits:Number):Number {
        return JDouble.longBitsToDouble(bits);
    }
    

    public function intBitsToFloat(bits:int):Number {
        return JFloat.intBitsToFloat(bits);
    }
    

    public function hashCode(anyType:Object):int {
        return anyType.hashCode();
    }
    

    public function waitFor(any:Object, timeoutMillis:Number):void {
        var anyType:Object = (any as Object);
        JSystem.waitObject(timeoutMillis);
    }
    

    public function compareTo(a:String, b:String):int {
        return JString.compareTo(a, b);
    }
    }
}

