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
    import org.allbinary.string.CommonStrings;

    //ActualPlatform
    public class PreLogUtil {
    private static const LOG_SUCCESS:String = "org.allbinary: ";
    

    public function PreLogUtil() {
        super();
    }
    

    public static function put(specialMessage:String, anyType:Object, functionName:String):void {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    public static function putOE(specialMessage:String, anyType:Object, functionName:String, exception:Object):void {
        var className:String = CommonStrings.getInstance().EMPTY;
        if (JSystem.className(anyType) != null) {
            className = JSystem.className(anyType);
        }
        var message:String = LogFormatUtil.getInstance().get_(className, functionName, specialMessage, exception);
        trace(PreLogUtil.LOG_SUCCESS);
        trace(message);
    }
    

    public static function putS(specialMessage:String, className:String, functionName:String):void {
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    public static function putSE(specialMessage:String, className:String, functionName:String, exception:Object):void {
        var message:String = LogFormatUtil.getInstance().get_(className, functionName, specialMessage, exception);
        trace(PreLogUtil.LOG_SUCCESS);
        trace(message);
    }
    

    public static function getClassName(anyType:Object):String {
        return JSystem.className(anyType);
    }
    }
}

