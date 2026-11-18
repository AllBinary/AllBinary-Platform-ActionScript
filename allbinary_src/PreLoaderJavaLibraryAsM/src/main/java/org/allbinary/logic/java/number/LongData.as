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
package org.allbinary.logic.java.number {
    import java.lang.JLong;

    public class LongData {
    private static var MAX_LONG_LENGTH_value:int;
    private static var MAX_LONG_LENGTH_set:Boolean = false;
    public static function get MAX_LONG_LENGTH():int {
        if (!LongData.MAX_LONG_LENGTH_set) {
            LongData.MAX_LONG_LENGTH_set = true;
            LongData.MAX_LONG_LENGTH_value = JLong.MAX_VALUE.toString().length;
        }
        return LongData.MAX_LONG_LENGTH_value;
    }
    

    public function LongData() {
        super();
    }
    }
}

