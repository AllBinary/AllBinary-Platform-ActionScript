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

    public class FileFactory {
    private static var instance_value:FileFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():FileFactory {
        if (!FileFactory.instance_set) {
            FileFactory.instance_set = true;
            FileFactory.instance_value = new FileFactory();
        }
        return FileFactory.instance_value;
    }
    

    public static function getInstance():FileFactory {
        return FileFactory.instance;
    }
    

    public function getInstance1(filePath:String):AbFile {
        return AbFile.createAbFileFromRawPath(filePath);
    }
    

    public function getInstance2(file:AbFile, childFilePath:String):AbFile {
        return AbFile.createAbFileWithChild(file, childFilePath);
    }
    

    public function isFile(path:String):Boolean {
        var file:AbFile = AbFile.createAbFile(path);
        if (file.exists()) {
            return true;
        } else {
            return false;
        }
    }
    }
}

