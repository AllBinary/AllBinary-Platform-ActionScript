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

    public class InputOutputTypeData {
    private static var instance_value:InputOutputTypeData;
    private static var instance_set:Boolean = false;
    private static function get instance():InputOutputTypeData {
        if (!InputOutputTypeData.instance_set) {
            InputOutputTypeData.instance_set = true;
            InputOutputTypeData.instance_value = new InputOutputTypeData();
        }
        return InputOutputTypeData.instance_value;
    }
        public var NAME:String = null;
        public var FILE:String = null;
        public var RESPONSE:String = null;
        public var DB:String = null;
        public var JSP:String = null;
        public var JSP_FRAGMENT:String = null;
        public var PHP:String = null;
        public var ASP:String = null;
        public var PL:String = null;
        public var DEFAULT:String = null;
        public var DEFAULT_FRAGMENT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputOutputTypeData():void {
    this.NAME = "INPUT_OUTPUT_TYPE_NAME";
    this.FILE = "INPUT_OUTPUT_TYPE_FILE";
    this.RESPONSE = "INPUT_OUTPUT_TYPE_RESPONSE";
    this.DB = "INPUT_OUTPUT_TYPE_DB";
    this.JSP = "jsp";
    this.JSP_FRAGMENT = "jspf";
    this.PHP = "php";
    this.ASP = "asp";
    this.PL = "pl";
    this.DEFAULT = this.JSP;
    this.DEFAULT_FRAGMENT = this.JSP_FRAGMENT;
        }
    

    public static function getInstance():InputOutputTypeData {
        return InputOutputTypeData.instance;
    }
    

    public function InputOutputTypeData() {
        super();
        this.initFieldsInputOutputTypeData();
    }
    }
}

