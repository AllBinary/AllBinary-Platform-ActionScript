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
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.path.AbPath;

    public class FileStreamFactory {
    private static var SINGLETON_value:Object;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():Object {
        if (!FileStreamFactory.SINGLETON_set) {
            FileStreamFactory.SINGLETON_set = true;
            FileStreamFactory.SINGLETON_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return FileStreamFactory.SINGLETON_value;
    }
    private static function set SINGLETON(value:Object):void {
        FileStreamFactory.SINGLETON_set = true;
        FileStreamFactory.SINGLETON_value = value;
    }
    

    public static function getInstance():FileStreamFactory {
        if (FileStreamFactory.SINGLETON == NullUtil.getInstance().NULL_OBJECT) {
            FileStreamFactory.SINGLETON = new FileStreamFactory();
        }
        return (FileStreamFactory.SINGLETON as FileStreamFactory);
    }
    

    public function FileStreamFactory() {
        super();
    }
    

    public function getFileInputStreamInstance(path:String, fileName:String):AbFileInputStream {
        var FILEABPATH:AbPath = new AbPath(path, fileName);
        var file:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
        return AbFileInputStream.createFromAbFile(file);
    }
    

    public function getFileOutputStreamInstance(path:String, fileName:String):AbFileOutputStream {
        var FILEABPATH:AbPath = new AbPath(path, fileName);
        var file:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
        if (file.exists()) {
            file.delete_();
            file.createNewFile();
        }
        return AbFileOutputStream.createFromAbFile(file);
    }
    

    public function delete_(path:String, fileName:String):void {
        var FILEABPATH:AbPath = new AbPath(path, fileName);
        var file:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
        file.delete_();
    }
    }
}

