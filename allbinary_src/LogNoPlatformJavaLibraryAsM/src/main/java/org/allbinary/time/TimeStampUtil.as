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
package org.allbinary.time {
    import java.util.JCalendar;
    import java.util.JDate;

    //NoPlatform
    public class TimeStampUtil {
    private static var instance_value:TimeStampUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():TimeStampUtil {
        if (!TimeStampUtil.instance_set) {
            TimeStampUtil.instance_set = true;
            TimeStampUtil.instance_value = new TimeStampUtil();
        }
        return TimeStampUtil.instance_value;
    }
    

    public static function getInstance():TimeStampUtil {
        return TimeStampUtil.instance;
    }
    

    public function TimeStampUtil() {
        super();
    }
    

    public function getAsString():String {
        throw new JException("RuntimeException", "");
    }
    }
}

