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

    //NoPlatform
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
    

    public static function getInstance():LogFormatUtil {
        return LogFormatUtil.instance;
    }
    

    public function LogFormatUtil() {
        super();
    }
    

    public function get_(className:String, functionName:String, specialMessage:String, exception:Object):String {
        throw new JException("RuntimeException", "");
    }
    

    public function getS(className:String, functionName:String, specialMessage:String):String {
        throw new JException("RuntimeException", "");
    }
    

    public function getO(exception:Object):String {
        throw new JException("RuntimeException", "");
    }
    }
}

