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
package org.allbinary.logic.java.exception {
    import java.io.JByteArrayOutputStream;
    import java.io.JPrintStream;

    //ActualPlatform
    public class ExceptionUtil {
    private static var instance_value:ExceptionUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ExceptionUtil {
        if (!ExceptionUtil.instance_set) {
            ExceptionUtil.instance_set = true;
            ExceptionUtil.instance_value = new ExceptionUtil();
        }
        return ExceptionUtil.instance_value;
    }
    private static var PRETEND_EXCEPTION_value:JException;
    private static var PRETEND_EXCEPTION_set:Boolean = false;
    public static function get PRETEND_EXCEPTION():JException {
        if (!ExceptionUtil.PRETEND_EXCEPTION_set) {
            ExceptionUtil.PRETEND_EXCEPTION_set = true;
            ExceptionUtil.PRETEND_EXCEPTION_value = new JException("Exception", "Not Really An Exception");
        }
        return ExceptionUtil.PRETEND_EXCEPTION_value;
    }
        private var NONE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsExceptionUtil():void {
    this.NONE = "No Stack Trace";
        }
    

    public static function getInstance():ExceptionUtil {
        return ExceptionUtil.instance;
    }
    

    public function ExceptionUtil() {
        super();
        this.initFieldsExceptionUtil();
    }
    

    public function getStackTrace(e:JException):String {
        if (e != null) {
            var byteArrayOutputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            var printStream:JPrintStream = new JPrintStream(byteArrayOutputStream);
            e.printStackTrace(printStream);
            var output:String = byteArrayOutputStream.toString();
            return output;
        }
        return this.NONE;
    }
    }
}

