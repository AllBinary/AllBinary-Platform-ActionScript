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
    import org.allbinary.logic.java.exception.ExceptionUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.time.TimeStampUtil;

    //ActualPlatform
    public class LogFormatUtil {
    private static var instance_value:LogFormatUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LogFormatUtil {
        if (!LogFormatUtil.instance_set) {
            LogFormatUtil.instance_set = true;
            LogFormatUtil.instance_value = new LogFormatUtil();
        }
        return LogFormatUtil.instance_value;
    }
        private var timeStampUtil:TimeStampUtil = null;
        private var commonSeps:CommonSeps = null;
        private var NONE:String = null;
        private var LOG_ERROR:String = null;
        private var EMPTY:String = null;
        private var STACK_TRACE:String = null;
        private var TIME:String = null;
        private var CLASS_NAME:String = null;
        private var FUNCTION_CALL:String = null;
        private var SPECIAL_MESSAGE:String = null;
        private var stringUtil:StringUtil = null;
        private var exceptionUtil:ExceptionUtil = null;
        private var nullUtil:NullUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogFormatUtil():void {
    this.timeStampUtil = TimeStampUtil.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.NONE = "None";
    this.LOG_ERROR = "\nLog-Error: ";
    this.EMPTY = "Empty";
    this.STACK_TRACE = "\nStack Trace: ";
    this.TIME = "Time: ";
    this.CLASS_NAME = this.commonSeps.SPACE;
    this.FUNCTION_CALL = CommonLabels.getInstance().COLON_SEP;
    this.SPECIAL_MESSAGE = "> ";
    this.stringUtil = StringUtil.getInstance();
    this.exceptionUtil = ExceptionUtil.getInstance();
    this.nullUtil = NullUtil.getInstance();
        }
    

    public static function getInstance():LogFormatUtil {
        return LogFormatUtil.instance;
    }
    

    public function LogFormatUtil() {
        super();
        this.initFieldsLogFormatUtil();
    }
    

    public function get_(className:String, functionName:String, specialMessage:String, exception:Object):String {
        var stringBuffer:StringMaker = this.getF(className, functionName);
        stringBuffer.append(this.getO(exception));
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    public function getS(className:String, functionName:String, specialMessage:String):String {
        var stringBuffer:StringMaker = this.getF(className, functionName);
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    private function getF(className:String, functionName:String):StringMaker {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.TIME);
        stringBuffer.append(this.timeStampUtil.getAsString());
        stringBuffer.append(this.CLASS_NAME);
        stringBuffer.append(className);
        stringBuffer.append(this.FUNCTION_CALL);
        stringBuffer.append(functionName);
        return stringBuffer;
    }
    

    public function getO(exception:Object):String {
        if (exception != this.nullUtil.NULL_OBJECT) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(this.LOG_ERROR);
            var exceptionAsString:String = exception.toString();
            stringBuffer.append(exceptionAsString);
            stringBuffer.append(this.STACK_TRACE);
            if (exception != this.nullUtil.NULL_OBJECT) {
                stringBuffer.append(this.exceptionUtil.getStackTrace((exception as JException)));
            } else {
                stringBuffer.append(this.stringUtil.NULL_STRING);
            }
            return stringBuffer.toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
    }
}

