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
package org.allbinary.logic.io.file {
    import org.allbinary.string.CommonSeps;

    public class FileUnamedUtil {
    private static var instance_value:FileUnamedUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():FileUnamedUtil {
        if (!FileUnamedUtil.instance_set) {
            FileUnamedUtil.instance_set = true;
            FileUnamedUtil.instance_value = new FileUnamedUtil();
        }
        return FileUnamedUtil.instance_value;
    }
        private var commonSeps:CommonSeps = null;

        // Java field initializers run after the base constructor
        private function initFieldsFileUnamedUtil():void {
    this.commonSeps = CommonSeps.getInstance();
        }

        public function FileUnamedUtil() {
            super();
            this.initFieldsFileUnamedUtil();
        }
    

    public static function getInstance():FileUnamedUtil {
        return FileUnamedUtil.instance;
    }
    

    public function process(string:String):String {
        var simplifiedString:String = string.toLowerCase();
        simplifiedString = JString.replace(simplifiedString, this.commonSeps.SPACE, this.commonSeps.UNDERSCORE);
        simplifiedString = JString.replace(simplifiedString, this.commonSeps.DASH, this.commonSeps.UNDERSCORE);
        return simplifiedString;
    }
    }
}

