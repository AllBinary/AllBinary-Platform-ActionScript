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
    import javax.microedition.lcdui.Displayable;
    import javax.microedition.lcdui.Form;
    import javax.microedition.rms.InvalidRecordIDException;
    import javax.microedition.rms.RecordStore;
    import javax.microedition.rms.RecordStoreException;
    import javax.microedition.rms.RecordStoreNotOpenException;
    import org.allbinary.logic.NullUtil;
    import java.lang.JFloat;
    import java.lang.JDouble;
    import java.lang.JClassLoader;

    //J2SE
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
    

    public function getRecord(anyType:Object, recordId:int):Vector.<int> {
        var recordStore:RecordStore = (anyType as RecordStore);
        var data:Vector.<int> = null;
        {
            data = new Vector.<int>(recordStore.getRecordSize(recordId));
            recordStore.getRecord(recordId, data, 0);
        }
        return (data.length < 1 ? NullUtil.getInstance().NULL_BYTE_ARRAY : data);
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
    

    public function getClassClassLoader(anyType:Object):JClassLoader {
        return JClass.getClassLoader(JSystem.className(anyType));
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
    

    public function isItemListener(owner:Displayable):Boolean {
        if ((owner is Form)) {
            return true;
        } else {
            return false;
        }
    }
    

    public function gc():void {
        JSystem.gc();
    }
    }
}

