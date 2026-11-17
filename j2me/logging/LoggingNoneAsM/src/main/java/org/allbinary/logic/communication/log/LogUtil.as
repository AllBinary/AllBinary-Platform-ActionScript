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
    

    public static function getInstance():LogUtil {
        return LogUtil.instance;
    }
    

    public function LogUtil() {
        super();
    }
    

    public function putP(log:Log):void {
    }
    

    public function putF(specialMessage:String, anyType:Object, functionName:String):void {
    }
    

    public function putFS(specialMessage:String, className:String, functionName:String):void {
    }
    

    public function put(specialMessage:String, anyType:Object, functionName:String, exception:Object):void {
    }
    }
}

