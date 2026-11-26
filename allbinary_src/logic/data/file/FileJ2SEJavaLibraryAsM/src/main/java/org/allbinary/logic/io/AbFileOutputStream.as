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
    import java.io.JFileNotFoundException;
    import java.io.JFileOutputStream;
    import org.allbinary.logic.io.file.AbFile;

    public class AbFileOutputStream extends JFileOutputStream {
    

    public static function createFromAbFile(file:AbFile):AbFileOutputStream {
        return new AbFileOutputStream(file.getPath(), false);
    }
    

    public static function createFromAbFileAppend(file:AbFile, append:Boolean):AbFileOutputStream {
        return new AbFileOutputStream(file.getPath(), append);
    }
    

    public static function createFromFilePath(name:String):AbFileOutputStream {
        return new AbFileOutputStream(name, false);
    }
    

    public static function createFromFilePathAppend(name:String, append:Boolean):AbFileOutputStream {
        return new AbFileOutputStream(name, append);
    }
    

    public function AbFileOutputStream(name:String, append:Boolean) {
        super(name, append);
    }
    }
}

