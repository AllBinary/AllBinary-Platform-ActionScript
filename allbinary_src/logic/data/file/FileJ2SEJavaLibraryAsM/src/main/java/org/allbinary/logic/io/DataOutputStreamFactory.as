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
    import org.allbinary.logic.io.file.AbFile;

    public class DataOutputStreamFactory {
    private static var instance_value:DataOutputStreamFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():DataOutputStreamFactory {
        if (!DataOutputStreamFactory.instance_set) {
            DataOutputStreamFactory.instance_set = true;
            DataOutputStreamFactory.instance_value = new DataOutputStreamFactory();
        }
        return DataOutputStreamFactory.instance_value;
    }
    

    public static function getInstance():DataOutputStreamFactory {
        return DataOutputStreamFactory.instance;
    }
    

    public function getInstanceForAbFile(file:AbFile):AbDataOutputStream {
        var idFileOutputStream:AbFileOutputStream = AbFileOutputStream.createFromAbFile(file);
        var idOutData:AbDataOutputStream = new AbDataOutputStream(idFileOutputStream);
        return idOutData;
    }
    

    public function getInstance2(filePath:String, fileName:String):AbDataOutputStream {
        var fileStreamFactory:FileStreamFactory = FileStreamFactory.getInstance();
        var fileOutputStream:AbFileOutputStream = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName);
        var idOutData:AbDataOutputStream = new AbDataOutputStream(fileOutputStream);
        return idOutData;
    }
    }
}

