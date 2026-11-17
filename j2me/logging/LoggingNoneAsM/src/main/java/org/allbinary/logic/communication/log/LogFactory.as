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
    private static var LOG_value:Log;
    private static var LOG_set:Boolean = false;
    public static function get LOG():Log {
        if (!LogFactory.LOG_set) {
            LogFactory.LOG_set = true;
            LogFactory.LOG_value = new Log(StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT);
        }
        return LogFactory.LOG_value;
    }
    

    public static function getInstanceD():Log {
        var stringUtil:StringUtil = StringUtil.getInstance();
        var nullUtil:NullUtil = NullUtil.getInstance();
        return new Log(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT);
    }
    

    public static function getInstance4(specialMessage:String, anyType:Object, functionName:String, exception:Object):Log {
        return LogFactory.LOG;
    }
    

    public static function getInstanceF(specialMessage:String, anyType:Object, functionName:String):Log {
        return LogFactory.LOG;
    }
    }
}

