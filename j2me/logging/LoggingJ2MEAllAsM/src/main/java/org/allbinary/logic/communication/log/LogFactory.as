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
package org.allbinary.logic.communication.log {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;

    //ActualPlatform
    public class LogFactory {
    

    public static function getInstanceD():Log {
        var stringUtil:StringUtil = StringUtil.getInstance();
        var nullUtil:NullUtil = NullUtil.getInstance();
        return new Log(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT);
    }
    

    public static function getInstanceNoF(specialMessage:String, anyType:Object, exception:Object):Log {
        return new Log(specialMessage, anyType, StringUtil.getInstance().EMPTY_STRING, exception);
    }
    

    public static function getInstance4(specialMessage:String, anyType:Object, functionName:String, exception:Object):Log {
        return new Log(specialMessage, anyType, functionName, exception);
    }
    

    public static function getInstanceF(specialMessage:String, anyType:Object, functionName:String):Log {
        var nullUtil:NullUtil = NullUtil.getInstance();
        return new Log(specialMessage, anyType, functionName, nullUtil.NULL_OBJECT);
    }
    }
}

