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

    //None - Do not use
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
    

    public function hashCode(anyType:Object):int {
        return anyType.hashCode();
    }
    

    public function waitFor(any:Object, timeoutMillis:Number):void {
        var anyType:Object = (any as Object);
        JSystem.waitObject(timeoutMillis);
    }
    

    public function getRecord(anyType:Object, recordId:int):Vector.<int> {
        return new Vector.<int>(0);
    }
    

    public function compareTo(a:String, b:String):int {
        return JString.compareTo(a, b);
    }
    

    public function equalIgnoreCase(a:String, b:String):Boolean {
        return (a.toLowerCase() == b.toLowerCase());
    }
    

    public function equalsNotstring(anyType:Object, object2:Object):Boolean {
        return anyType.equals(object2);
    }
    

    public function toNumberFromChar(value:int):int {
        return value;
    }
    

    public function toNumber(value:int):int {
        return value;
    }
    

    public function getByteArray(string:String):Vector.<int> {
        return JString.getBytes(string);
    }
    

    public function isItemListener(owner:Object):Boolean {
        return false;
    }
    

    public function printAvailableMethods(anyType:Object):void {
    }
    

    public function gc():void {
        JSystem.gc();
    }
    }
}

