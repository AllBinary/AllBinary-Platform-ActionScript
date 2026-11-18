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
package org.allbinary.logic.communication.java.vm.stats {

    public class JvmStatisticsData {
    public static const JVM_STATISTICS:String = "JVM_STATISTICS_";
    private static var NAME_value:String;
    private static var NAME_set:Boolean = false;
    public static function get NAME():String {
        if (!JvmStatisticsData.NAME_set) {
            JvmStatisticsData.NAME_set = true;
            JvmStatisticsData.NAME_value = JvmStatisticsData.JVM_STATISTICS + "NAME";
        }
        return JvmStatisticsData.NAME_value;
    }
    private static var TOTAL_MEMORY_BYTES_value:String;
    private static var TOTAL_MEMORY_BYTES_set:Boolean = false;
    public static function get TOTAL_MEMORY_BYTES():String {
        if (!JvmStatisticsData.TOTAL_MEMORY_BYTES_set) {
            JvmStatisticsData.TOTAL_MEMORY_BYTES_set = true;
            JvmStatisticsData.TOTAL_MEMORY_BYTES_value = JvmStatisticsData.JVM_STATISTICS + "TOTAL_MEMORY_BYTES";
        }
        return JvmStatisticsData.TOTAL_MEMORY_BYTES_value;
    }
    private static var TOTAL_MEMORY_KILOBYTES_value:String;
    private static var TOTAL_MEMORY_KILOBYTES_set:Boolean = false;
    public static function get TOTAL_MEMORY_KILOBYTES():String {
        if (!JvmStatisticsData.TOTAL_MEMORY_KILOBYTES_set) {
            JvmStatisticsData.TOTAL_MEMORY_KILOBYTES_set = true;
            JvmStatisticsData.TOTAL_MEMORY_KILOBYTES_value = JvmStatisticsData.JVM_STATISTICS + "TOTAL_MEMORY_KILOBYTES";
        }
        return JvmStatisticsData.TOTAL_MEMORY_KILOBYTES_value;
    }
    private static var TOTAL_MEMORY_MEGABYTES_value:String;
    private static var TOTAL_MEMORY_MEGABYTES_set:Boolean = false;
    public static function get TOTAL_MEMORY_MEGABYTES():String {
        if (!JvmStatisticsData.TOTAL_MEMORY_MEGABYTES_set) {
            JvmStatisticsData.TOTAL_MEMORY_MEGABYTES_set = true;
            JvmStatisticsData.TOTAL_MEMORY_MEGABYTES_value = JvmStatisticsData.JVM_STATISTICS + "TOTAL_MEMORY_MEGABYTES";
        }
        return JvmStatisticsData.TOTAL_MEMORY_MEGABYTES_value;
    }
    private static var FREE_MEMORY_BYTES_value:String;
    private static var FREE_MEMORY_BYTES_set:Boolean = false;
    public static function get FREE_MEMORY_BYTES():String {
        if (!JvmStatisticsData.FREE_MEMORY_BYTES_set) {
            JvmStatisticsData.FREE_MEMORY_BYTES_set = true;
            JvmStatisticsData.FREE_MEMORY_BYTES_value = JvmStatisticsData.JVM_STATISTICS + "FREE_MEMORY_BYTES";
        }
        return JvmStatisticsData.FREE_MEMORY_BYTES_value;
    }
    private static var FREE_MEMORY_KILOBYTES_value:String;
    private static var FREE_MEMORY_KILOBYTES_set:Boolean = false;
    public static function get FREE_MEMORY_KILOBYTES():String {
        if (!JvmStatisticsData.FREE_MEMORY_KILOBYTES_set) {
            JvmStatisticsData.FREE_MEMORY_KILOBYTES_set = true;
            JvmStatisticsData.FREE_MEMORY_KILOBYTES_value = JvmStatisticsData.JVM_STATISTICS + "FREE_MEMORY_KILOBYTES";
        }
        return JvmStatisticsData.FREE_MEMORY_KILOBYTES_value;
    }
    private static var FREE_MEMORY_MEGABYTES_value:String;
    private static var FREE_MEMORY_MEGABYTES_set:Boolean = false;
    public static function get FREE_MEMORY_MEGABYTES():String {
        if (!JvmStatisticsData.FREE_MEMORY_MEGABYTES_set) {
            JvmStatisticsData.FREE_MEMORY_MEGABYTES_set = true;
            JvmStatisticsData.FREE_MEMORY_MEGABYTES_value = JvmStatisticsData.JVM_STATISTICS + "FREE_MEMORY_MEGABYTES";
        }
        return JvmStatisticsData.FREE_MEMORY_MEGABYTES_value;
    }
    private static var MAX_MEMORY_BYTES_value:String;
    private static var MAX_MEMORY_BYTES_set:Boolean = false;
    public static function get MAX_MEMORY_BYTES():String {
        if (!JvmStatisticsData.MAX_MEMORY_BYTES_set) {
            JvmStatisticsData.MAX_MEMORY_BYTES_set = true;
            JvmStatisticsData.MAX_MEMORY_BYTES_value = JvmStatisticsData.JVM_STATISTICS + "MAX_MEMORY_BYTES";
        }
        return JvmStatisticsData.MAX_MEMORY_BYTES_value;
    }
    private static var MAX_MEMORY_KILOBYTES_value:String;
    private static var MAX_MEMORY_KILOBYTES_set:Boolean = false;
    public static function get MAX_MEMORY_KILOBYTES():String {
        if (!JvmStatisticsData.MAX_MEMORY_KILOBYTES_set) {
            JvmStatisticsData.MAX_MEMORY_KILOBYTES_set = true;
            JvmStatisticsData.MAX_MEMORY_KILOBYTES_value = JvmStatisticsData.JVM_STATISTICS + "MAX_MEMORY_KILOBYTES";
        }
        return JvmStatisticsData.MAX_MEMORY_KILOBYTES_value;
    }
    private static var MAX_MEMORY_MEGABYTES_value:String;
    private static var MAX_MEMORY_MEGABYTES_set:Boolean = false;
    public static function get MAX_MEMORY_MEGABYTES():String {
        if (!JvmStatisticsData.MAX_MEMORY_MEGABYTES_set) {
            JvmStatisticsData.MAX_MEMORY_MEGABYTES_set = true;
            JvmStatisticsData.MAX_MEMORY_MEGABYTES_value = JvmStatisticsData.JVM_STATISTICS + "MAX_MEMORY_MEGABYTES";
        }
        return JvmStatisticsData.MAX_MEMORY_MEGABYTES_value;
    }
    private static var NUMBER_OF_THREADS_value:String;
    private static var NUMBER_OF_THREADS_set:Boolean = false;
    public static function get NUMBER_OF_THREADS():String {
        if (!JvmStatisticsData.NUMBER_OF_THREADS_set) {
            JvmStatisticsData.NUMBER_OF_THREADS_set = true;
            JvmStatisticsData.NUMBER_OF_THREADS_value = JvmStatisticsData.JVM_STATISTICS + "NUMBER_OF_THREADS";
        }
        return JvmStatisticsData.NUMBER_OF_THREADS_value;
    }
    

    public function JvmStatisticsData() {
        super();
    }
    }
}

