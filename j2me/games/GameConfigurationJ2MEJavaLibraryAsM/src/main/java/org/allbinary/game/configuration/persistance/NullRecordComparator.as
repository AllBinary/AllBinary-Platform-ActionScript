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

    public class NullRecordComparator implements RecordComparator {
    private static var NULL_RECORD_COMPARATOR_value:NullRecordComparator;
    private static var NULL_RECORD_COMPARATOR_set:Boolean = false;
    public static function get NULL_RECORD_COMPARATOR():NullRecordComparator {
        if (!NullRecordComparator.NULL_RECORD_COMPARATOR_set) {
            NullRecordComparator.NULL_RECORD_COMPARATOR_set = true;
            NullRecordComparator.NULL_RECORD_COMPARATOR_value = new NullRecordComparator();
        }
        return NullRecordComparator.NULL_RECORD_COMPARATOR_value;
    }
    

    public function compare(rec1:Vector.<int>, rec2:Vector.<int>):int {
        return 0;
    }
    }
}

