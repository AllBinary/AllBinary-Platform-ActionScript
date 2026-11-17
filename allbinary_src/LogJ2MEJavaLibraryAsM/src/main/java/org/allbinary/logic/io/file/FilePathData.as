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

    public class FilePathData {
    private static var instance_value:FilePathData;
    private static var instance_set:Boolean = false;
    private static function get instance():FilePathData {
        if (!FilePathData.instance_set) {
            FilePathData.instance_set = true;
            FilePathData.instance_value = new FilePathData();
        }
        return FilePathData.instance_value;
    }
        public var SEPARATORCHAR:int = 0;
        public var PATH_START:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFilePathData():void {
    this.SEPARATORCHAR = "\\".charCodeAt(0);
    this.PATH_START = "\\\\";
        }
    

    public static function getInstance():FilePathData {
        return FilePathData.instance;
    }
    

    public function FilePathData() {
        super();
        this.initFieldsFilePathData();
    }
    }
}

