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
package org.allbinary.logic.io.file.directory {

    public class TrackedStrings {
    private static var instance_value:TrackedStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():TrackedStrings {
        if (!TrackedStrings.instance_set) {
            TrackedStrings.instance_set = true;
            TrackedStrings.instance_value = new TrackedStrings();
        }
        return TrackedStrings.instance_value;
    }
        public var TARGET_PATH_WINDOWS:String = null;
        public var TARGET_PATH_UNIX:String = null;
        public var HTML_TEMP:String = null;
        public var APPLICATION:String = null;
        public var APP:String = null;
        public var GIT_COMMAND:String = null;
        public var CHANGE_DIRECTORY_OPTION:String = null;
        public var LIST_FILES_COMMAND:String = null;
        public var ERROR_UNMATCH_OPTION:String = null;
        public var PATHSPEC_SEPARATOR:String = null;
        public var SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTrackedStrings():void {
    this.TARGET_PATH_WINDOWS = "\\target\\";
    this.TARGET_PATH_UNIX = "/target/";
    this.HTML_TEMP = "HTMLTemp";
    this.APPLICATION = "Application";
    this.APP = "\\app";
    this.GIT_COMMAND = "git";
    this.CHANGE_DIRECTORY_OPTION = "-C";
    this.LIST_FILES_COMMAND = "ls-files";
    this.ERROR_UNMATCH_OPTION = "--error-unmatch";
    this.PATHSPEC_SEPARATOR = "--";
    this.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE = "-z";
        }

        public function TrackedStrings() {
            super();
            this.initFieldsTrackedStrings();
        }
    

    public static function getInstance():TrackedStrings {
        return TrackedStrings.instance;
    }
    }
}

