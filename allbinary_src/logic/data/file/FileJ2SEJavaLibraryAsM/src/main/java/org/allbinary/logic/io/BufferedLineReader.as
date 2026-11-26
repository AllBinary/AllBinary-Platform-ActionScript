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
package org.allbinary.logic.io {
    import java.io.JBufferedReader;
    import java.io.JFileReader;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.AbFileNativeUtil;

    public class BufferedLineReader {
        private var tmpIn:JBufferedReader = null;

        // Java field initializers run after the base constructor
        private function initFieldsBufferedLineReader():void {
    
        }
    

    public function BufferedLineReader(file:AbFile) {
        super();
        this.initFieldsBufferedLineReader();
        this.tmpIn = new JBufferedReader(new JFileReader(AbFileNativeUtil.get_(file)));
    }
    

    public function readUpToLines(readAheadIndex:Number):void {
    }
    

    public function readLine():String {
        return this.tmpIn.readLine();
    }
    

    public function ready():Boolean {
        return this.tmpIn.ready();
    }
    

    public function getSize():Number {
        return 0;
    }
    

    public function getCurrent():int {
        return 0;
    }
    }
}

