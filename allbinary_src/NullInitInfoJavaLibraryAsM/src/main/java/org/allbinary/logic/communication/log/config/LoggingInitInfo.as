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
package org.allbinary.logic.communication.log.config {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class LoggingInitInfo {
    private static var logConfigInfoList:BasicArrayList = null;
    private static var hasRead:Boolean = false;
    

    public function LoggingInitInfo() {
        super();
    }
    

    public static function write():void {
        try {
            LoggingInitInfo.hasRead = false;
        } catch (e:*) {
            throw e;
        }
    }
    

    private static function read():void {
        try {
        } catch (e:*) {
            throw e;
        }
    }
    

    public static function setHasRead(value:Boolean):void {
        LoggingInitInfo.hasRead = value;
    }
    

    private static function updateIfNeeded():void {
        if (!LoggingInitInfo.hasRead) {
            LoggingInitInfo.read();
            LoggingInitInfo.hasRead = true;
            if (LoggingInitInfo.logConfigInfoList == null) {
                throw new JException("Exception", "Read Failed");
            }
        }
    }
    

    public function isValid():Boolean {
        try {
            return true;
        } catch (e:*) {
            return false;
        }
    }
    

    public static function set_(logConfigInfoList:BasicArrayList):void {
        LoggingInitInfo.logConfigInfoList = logConfigInfoList;
    }
    

    public static function get_():BasicArrayList {
        LoggingInitInfo.updateIfNeeded();
        return LoggingInitInfo.logConfigInfoList;
    }
    

    public static function getTypeList():BasicArrayList {
        LoggingInitInfo.updateIfNeeded();
        var allLogTypeVector:BasicArrayList = new BasicArrayListD();
        var size:int = LoggingInitInfo.logConfigInfoList.size();
        for (var index:int = 0; index < size; index++) {
            var logConfigInfo:LogConfig = (LoggingInitInfo.logConfigInfoList.objectArray[index] as LogConfig);
            var logTypeVector:BasicArrayList = logConfigInfo.getTypeVector();
            if (logConfigInfo.isEnabled()) {
                allLogTypeVector.addAllList(logTypeVector);
            }
        }
        return allLogTypeVector;
    }
    

    public function getNumberOfLogConfigs():int {
        return LoggingInitInfo.logConfigInfoList.size();
    }
    

    public function toString():String {
        try {
            return null;
        } catch (e:*) {
            return "Error";
        }
    }
    }
}

