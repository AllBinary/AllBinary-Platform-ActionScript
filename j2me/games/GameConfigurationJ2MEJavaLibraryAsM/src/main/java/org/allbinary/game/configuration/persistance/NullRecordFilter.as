/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.game.configuration.persistance {

    public class NullRecordFilter implements RecordFilter {
    private static var NULL_RECORD_FILTER_value:NullRecordFilter;
    private static var NULL_RECORD_FILTER_set:Boolean = false;
    public static function get NULL_RECORD_FILTER():NullRecordFilter {
        if (!NullRecordFilter.NULL_RECORD_FILTER_set) {
            NullRecordFilter.NULL_RECORD_FILTER_set = true;
            NullRecordFilter.NULL_RECORD_FILTER_value = new NullRecordFilter();
        }
        return NullRecordFilter.NULL_RECORD_FILTER_value;
    }
    

    public function matches(candidate:Vector.<int>):Boolean {
        return true;
    }
    }
}

