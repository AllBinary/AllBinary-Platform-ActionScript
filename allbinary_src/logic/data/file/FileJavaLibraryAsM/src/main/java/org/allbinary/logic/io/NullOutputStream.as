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
    import java.io.JOutputStream;

    public class NullOutputStream extends OutputStream {
    private static var NULL_OUTPUT_STREAM_value:NullOutputStream;
    private static var NULL_OUTPUT_STREAM_set:Boolean = false;
    public static function get NULL_OUTPUT_STREAM():NullOutputStream {
        if (!NullOutputStream.NULL_OUTPUT_STREAM_set) {
            NullOutputStream.NULL_OUTPUT_STREAM_set = true;
            NullOutputStream.NULL_OUTPUT_STREAM_value = new NullOutputStream();
        }
        return NullOutputStream.NULL_OUTPUT_STREAM_value;
    }
    

    override public function write(b:int):void {
    }
    

    override public function write(b:Vector.<int>, off:int, len:int):void {
    }
    

    override public function close():void {
    }
    }
}

