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
package org.allbinary.logic.io {
    import java.io.JIOException;
    import java.io.JReader;

    public class NullReader extends Reader {
    private static var NULL_READER_value:NullReader;
    private static var NULL_READER_set:Boolean = false;
    public static function get NULL_READER():NullReader {
        if (!NullReader.NULL_READER_set) {
            NullReader.NULL_READER_set = true;
            NullReader.NULL_READER_value = new NullReader();
        }
        return NullReader.NULL_READER_value;
    }
    

    override public function read():int {
        return -1;
    }
    

    override public function read(cbuf:Vector.<int>, off:int, len:int):int {
        return -1;
    }
    

    override public function ready():Boolean {
        return false;
    }
    

    override public function skip(n:Number):Number {
        return 0;
    }
    

    override public function close():void {
    }
    }
}

