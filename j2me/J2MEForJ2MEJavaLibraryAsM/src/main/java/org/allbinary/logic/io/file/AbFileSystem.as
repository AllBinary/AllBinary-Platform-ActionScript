/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
    import java.io.JInputStream;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    //J2MEForJ2ME
    public class AbFileSystem {
    private static var instance_value:AbFileSystem;
    private static var instance_set:Boolean = false;
    private static function get instance():AbFileSystem {
        if (!AbFileSystem.instance_set) {
            AbFileSystem.instance_set = true;
            AbFileSystem.instance_value = new AbFileSystem();
        }
        return AbFileSystem.instance_value;
    }
        private var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbFileSystem():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
        }

        public function AbFileSystem() {
            super();
            this.initFieldsAbFileSystem();
        }
    

    public static function getInstance():AbFileSystem {
        return AbFileSystem.instance;
    }
    

    public function isDirectoryOrFile(path:String):Boolean {
        return false;
    }
    

    public function isDirectory(path:String):Boolean {
        return false;
    }
    

    public function getFilesAsStringArrayForPath(currentDirPath:String):Vector.<String> {
        return StringUtil.getInstance().getArrayInstance();
    }
    

    public function readAsString(fileName:String):String {
        var bytes:Vector.<int> = new Vector.<int>(1000000);
        return this.readAsString(fileName, bytes);
    }
    

    public function readAsString(fileName:String, bytes:Vector.<int>):String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function close(closeable:Object):Boolean {
        try {
            if (closeable != null) {
                var inputStream:InputStream = ((closeable as InputStream));
                inputStream.close();
            }
            return true;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e);
            return false;
        }
    }
    }
}

