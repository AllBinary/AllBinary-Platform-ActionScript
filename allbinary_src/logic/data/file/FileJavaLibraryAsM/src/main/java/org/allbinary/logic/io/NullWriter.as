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

    public class NullWriter extends JWriter {
    private static var NULL_WRITER_value:NullWriter;
    private static var NULL_WRITER_set:Boolean = false;
    public static function get NULL_WRITER():NullWriter {
        if (!NullWriter.NULL_WRITER_set) {
            NullWriter.NULL_WRITER_set = true;
            NullWriter.NULL_WRITER_value = new NullWriter();
        }
        return NullWriter.NULL_WRITER_value;
    }
    

    override public function write(...args):void {
        if (args.length == 1 && args[0] is int) {
            this.write_jo1_1(args[0]);
            return;
        }
        if (args.length == 3 && args[0] is Vector.<int> && args[1] is int && args[2] is int) {
            this.write_jo3_1(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 1) {
            this.write_jo1_2(args[0]);
            return;
        }
        if (args.length == 3) {
            this.write_jo3_2(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "write");
    }

    private function write_jo1_1(c:int):void {
    }

    private function write_jo3_1(cbuf:Vector.<int>, off:int, len:int):void {
    }

    private function write_jo1_2(str:String):void {
    }

    private function write_jo3_2(str:String, off:int, len:int):void {
    }
    
    
    
    

    override public function flush():void {
    }
    

    override public function close():void {
    }
    }
}

