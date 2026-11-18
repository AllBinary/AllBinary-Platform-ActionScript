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
package org.allbinary.logic.io.file {
    import java.io.JFile;
    import org.allbinary.logic.communication.log.PreLogUtil;

    public class FileWrapperUtil {
    

    public static function wrapFiles(files:Vector.<Object>):Vector.<AbFile> {
        try {
            var abFileArray:Vector.<AbFile> = new Vector.<AbFile>(files.length);
            for (var index:int = int(files.length - 1); index >= 0; index--) {
                abFileArray[index] = new AbFile((files[index] as JFile));
            }
            return abFileArray;
        } catch (e:*) {
            PreLogUtil.putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e);
            return new Vector.<AbFile>(0);
        }
    }
    

    public static function wrapFile(file:JFile):AbFile {
        try {
            return new AbFile(file);
        } catch (e:*) {
            PreLogUtil.putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e);
            return AbFile.NULL_FILE;
        }
    }
    }
}

