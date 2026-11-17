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
        public var PRETEND_EXCEPTION:JException = null;
        private var NONE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsExceptionUtil():void {
    this.PRETEND_EXCEPTION = new JException("Exception", "Not Really An Exception");
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
        var bs:JByteArrayOutputStream = new JByteArrayOutputStream();
        e.printStackTrace();
        var output:String = bs.toString();
        return output;
    }
    }
}

