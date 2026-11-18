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

    public class NullRecordStore extends RecordStore {
    private static var NULL_RECORD_STORE_value:NullRecordStore;
    private static var NULL_RECORD_STORE_set:Boolean = false;
    public static function get NULL_RECORD_STORE():NullRecordStore {
        if (!NullRecordStore.NULL_RECORD_STORE_set) {
            NullRecordStore.NULL_RECORD_STORE_set = true;
            NullRecordStore.NULL_RECORD_STORE_value = new NullRecordStore();
        }
        return NullRecordStore.NULL_RECORD_STORE_value;
    }
    }
}

