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
package org.allbinary.logic.communication.http.file.upload {

    public class FileUploadData {
    private static var instance_value:FileUploadData;
    private static var instance_set:Boolean = false;
    private static function get instance():FileUploadData {
        if (!FileUploadData.instance_set) {
            FileUploadData.instance_set = true;
            FileUploadData.instance_value = new FileUploadData();
        }
        return FileUploadData.instance_value;
    }
        public var FILE:String = null;
        public var UPLOAD_TO_FILE_PATH:String = null;
        public var FILE_DATA:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFileUploadData():void {
    this.FILE = "download_file_permissions.xml";
    this.UPLOAD_TO_FILE_PATH = "FILE_UPLOAD_UPLOAD_TO_FILE_PATH";
    this.FILE_DATA = "FILE_UPLOAD_FILE_DATA";
        }

        public function FileUploadData() {
            super();
            this.initFieldsFileUploadData();
        }
    

    public static function getInstance():FileUploadData {
        return FileUploadData.instance;
    }
    }
}

