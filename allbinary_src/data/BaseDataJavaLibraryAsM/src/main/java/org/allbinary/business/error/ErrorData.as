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
package org.allbinary.business.error {

    public class ErrorData {
    private static var instance_value:ErrorData;
    private static var instance_set:Boolean = false;
    private static function get instance():ErrorData {
        if (!ErrorData.instance_set) {
            ErrorData.instance_set = true;
            ErrorData.instance_value = new ErrorData();
        }
        return ErrorData.instance_value;
    }
        public var NAME:String = null;
        public var TEXT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsErrorData():void {
    this.NAME = "ERROR_NAME";
    this.TEXT = "ERROR_TEXT";
        }
    

    public static function getInstance():ErrorData {
        return ErrorData.instance;
    }
    

    public function ErrorData() {
        super();
        this.initFieldsErrorData();
    }
    }
}

