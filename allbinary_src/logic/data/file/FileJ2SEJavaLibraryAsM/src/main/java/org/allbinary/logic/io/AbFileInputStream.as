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
    import java.io.JFile;
    import java.io.JFileInputStream;
    import java.io.JFileNotFoundException;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.AbFileNativeUtil;

    public class AbFileInputStream extends FileInputStream {
    

    public function AbFileInputStream(name:String) {
        super(name);
    }
    

    public static function createFromAbFile(file:AbFile):AbFileInputStream {
        return new AbFileInputStream(AbFileNativeUtil.get_(file).getPath());
    }
    

    public static function createFromFile(file:JFile):AbFileInputStream {
        return new AbFileInputStream(file.getPath());
    }
    }
}

