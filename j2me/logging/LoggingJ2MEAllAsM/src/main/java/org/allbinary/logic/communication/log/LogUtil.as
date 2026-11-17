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
    import org.allbinary.TsUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import java.lang.JInteger;

    //ActualPlatform
    public class LogUtil {
    private static var instance_value:LogUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LogUtil {
        if (!LogUtil.instance_set) {
            LogUtil.instance_set = true;
            LogUtil.instance_value = new LogUtil();
        }
        return LogUtil.instance_value;
    }
        private var logFormatUtil:LogFormatUtil = null;
        private var LOG_SUCCESS:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogUtil():void {
    this.logFormatUtil = LogFormatUtil.getInstance();
    this.LOG_SUCCESS = "org.allbinary: ";
        }
    

    public static function getInstance():LogUtil {
        return LogUtil.instance;
    }
    

    public function LogUtil() {
        super();
        this.initFieldsLogUtil();
    }
    

    public function putL(log:Log):void {
        var specialMessage:String = log.getSpecialMessage();
        var anyType:Object = log.getObject();
        var functionName:String = log.getFunctionName();
        var exception:Object = log.getThrowable();
        this.put(specialMessage, anyType, functionName, exception);
    }
    

    public function putF(specialMessage:String, anyType:Object, functionName:String):void {
        var className:String = CommonStrings.getInstance().EMPTY;
        if (JSystem.className(anyType) != null) {
            className = new StringMaker().append(JSystem.className(anyType)).append(CommonSeps.getInstance().COLON).append(JInteger.toHexString(TsUtil.getInstance().hashCode(anyType))).toString();
        }
        var message:String = this.logFormatUtil.getS(className, functionName, specialMessage);
        trace(this.LOG_SUCCESS);
        trace(message);
    }
    

    public function putFS(specialMessage:String, className:String, functionName:String):void {
        var message:String = this.logFormatUtil.getS(className, functionName, specialMessage);
        trace(this.LOG_SUCCESS);
        trace(message);
    }
    

    public function put(specialMessage:String, anyType:Object, functionName:String, exception:Object):void {
        var className:String = CommonStrings.getInstance().EMPTY;
        if (JSystem.className(anyType) != null) {
            var hashCodeValue:int = TsUtil.getInstance().hashCode(anyType);
            var hexString:String = JInteger.toHexString(hashCodeValue);
            className = new StringMaker().append(JSystem.className(anyType)).append(CommonSeps.getInstance().COLON).append(hexString).toString();
        }
        var message:String = this.logFormatUtil.get_(className, functionName, specialMessage, exception);
        trace(this.LOG_SUCCESS);
        trace(message);
    }
    }
}

