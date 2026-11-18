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
    import java.io.JWriter;

    public class NullWriter extends Writer {
    private static var NULL_WRITER_value:NullWriter;
    private static var NULL_WRITER_set:Boolean = false;
    public static function get NULL_WRITER():NullWriter {
        if (!NullWriter.NULL_WRITER_set) {
            NullWriter.NULL_WRITER_set = true;
            NullWriter.NULL_WRITER_value = new NullWriter();
        }
        return NullWriter.NULL_WRITER_value;
    }
    

    override public function write(c:int):void {
    }
    

    override public function write(cbuf:Vector.<int>, off:int, len:int):void {
    }
    

    override public function write(str:String):void {
    }
    

    override public function write(str:String, off:int, len:int):void {
    }
    

    override public function flush():void {
    }
    

    override public function close():void {
    }
    }
}

