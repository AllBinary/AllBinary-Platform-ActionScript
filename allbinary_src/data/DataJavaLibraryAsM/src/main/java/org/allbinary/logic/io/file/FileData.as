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

    public class FileData {
    private static var instance_value:FileData;
    private static var instance_set:Boolean = false;
    private static function get instance():FileData {
        if (!FileData.instance_set) {
            FileData.instance_set = true;
            FileData.instance_value = new FileData();
        }
        return FileData.instance_value;
    }
        public var NAME:String = null;
        public var ISFILE:String = null;
        public var ISDIRECTORY:String = null;
        public var ISHIDDEN:String = null;
        public var ISABSOLUTE:String = null;
        public var ROOT_NAME:String = null;
        public var PATH:String = null;
        public var ABSOLUTE_PATH:String = null;
        public var CANONICAL_PATH:String = null;
        public var PARENT:String = null;
        public var MINLEN:int = 0;
        public var MAXLEN:int = 0;
        public var MAXIMAGEFILESIZE:int = 0;
        public var MINIMAGEFILESIZE:int = 0;
        public var MAXDOWNLOADABLEFILESIZE:int = 0;
        public var MINDOWNLOADABLEFILESIZE:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsFileData():void {
    this.NAME = "FILE_NAME";
    this.ISFILE = "FILE_ISFILE";
    this.ISDIRECTORY = "FILE_ISDIRECTORY";
    this.ISHIDDEN = "FILE_ISHIDDEN";
    this.ISABSOLUTE = "FILE_ISABSOLUTE";
    this.ROOT_NAME = "FILE_ROOT_NAME";
    this.PATH = "FILE_PATH";
    this.ABSOLUTE_PATH = "FILE_ABSOLUTE_PATH";
    this.CANONICAL_PATH = "FILE_CANONICAL_PATH";
    this.PARENT = "FILE_PARENT";
    this.MINLEN = 1;
    this.MAXLEN = 120;
    this.MAXIMAGEFILESIZE = 1048576;
    this.MINIMAGEFILESIZE = 32;
    this.MAXDOWNLOADABLEFILESIZE = int(1048576 * 20);
    this.MINDOWNLOADABLEFILESIZE = 1;
        }
    

    public static function getInstance():FileData {
        return FileData.instance;
    }
    

    public function FileData() {
        super();
        this.initFieldsFileData();
    }
    }
}

