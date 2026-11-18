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
    import java.lang.JInteger;

    public class TimeUtil {
    private static var instance_value:TimeUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():TimeUtil {
        if (!TimeUtil.instance_set) {
            TimeUtil.instance_set = true;
            TimeUtil.instance_value = new TimeUtil();
        }
        return TimeUtil.instance_value;
    }
    private static var calendar_value:JCalendar;
    private static var calendar_set:Boolean = false;
    private static function get calendar():JCalendar {
        if (!TimeUtil.calendar_set) {
            TimeUtil.calendar_set = true;
            TimeUtil.calendar_value = JCalendar.getInstance();
        }
        return TimeUtil.calendar_value;
    }
    

    public static function getInstance():TimeUtil {
        return TimeUtil.instance;
    }
    

    public function setCalendar(calendar:JCalendar, yearString:String, monthString:String, dayString:String, hourString:String):void {
        var year:int = yearString.intValue();
        var month:int = monthString.intValue();
        var day:int = dayString.intValue();
        var hour:int = hourString.intValue();
        calendar.set_(year, month, day, hour, 0);
    }
    

    public function setCalendarWithTime(calendar:JCalendar, yearString:String, monthString:String, dayString:String, hourString:String, minuteString:String, secondString:String):void {
        var year:int = yearString.intValue();
        var month:int = monthString.intValue();
        var day:int = dayString.intValue();
        var hour:int = hourString.intValue();
        var minute:int = minuteString.intValue();
        var second:int = secondString.intValue();
        calendar.set_(year, month, day, hour, minute, second);
    }
    

    public function setExpirationCalendar(calendar:JCalendar, yearsString:String, monthsString:String, daysString:String, hoursString:String, minutesString:String, secondsString:String):void {
        var year:int = calendar.get_(JCalendar.YEAR) + yearsString.intValue();
        var month:int = calendar.get_(JCalendar.MONTH) + monthsString.intValue();
        var day:int = calendar.get_(JCalendar.DAY_OF_MONTH) + daysString.intValue();
        var hour:int = calendar.get_(JCalendar.HOUR) + hoursString.intValue();
        var minute:int = calendar.get_(JCalendar.MINUTE) + minutesString.intValue();
        var second:int = calendar.get_(JCalendar.SECOND) + secondsString.intValue();
        calendar.set_(year, month, day, hour, minute, second);
    }
    

    public function getTotalTime(yearString:String, monthString:String, dayString:String, hourString:String, minuteString:String, secondString:String):Number {
        var time:Number = TimeUtil.calendar.getTimeInMillis();
        this.setExpirationCalendar(TimeUtil.calendar, yearString, monthString, dayString, hourString, minuteString, secondString);
        var timeDelta:Number = TimeUtil.calendar.getTimeInMillis();
        return timeDelta - time;
    }
    }
}

