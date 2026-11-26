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
    import java.io.JBufferedWriter;
    import java.io.JFileReader;
    import java.io.JFileWriter;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.AbFileNativeUtil;
    import org.allbinary.logic.string.StringUtil;

    public class BufferedIOUtil {
    

    public static function copy(backupFile:AbFile, backupFileBak:AbFile):void {
        var line:String = StringUtil.getInstance().EMPTY_STRING;
        var tmpOut:JBufferedWriter = new JBufferedWriter(new JFileWriter(AbFileNativeUtil.get_(backupFileBak)));
        var tmpIn:JBufferedReader = new JBufferedReader(new JFileReader(AbFileNativeUtil.get_(backupFile)));
        while (tmpIn.ready()) {
            line = tmpIn.readLine();
            tmpOut.write(line, 0, line.length);
            tmpOut.newLine();
        }
        tmpOut.flush();
    }
    }
}

