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

    public class InputTypeData {
    private static var instance_value:InputTypeData;
    private static var instance_set:Boolean = false;
    private static function get instance():InputTypeData {
        if (!InputTypeData.instance_set) {
            InputTypeData.instance_set = true;
            InputTypeData.instance_value = new InputTypeData();
        }
        return InputTypeData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputTypeData():void {
    this.NAME = "INPUT_TYPE_NAME";
        }
    

    public static function getInstance():InputTypeData {
        return InputTypeData.instance;
    }
    

    public function InputTypeData() {
        super();
        this.initFieldsInputTypeData();
    }
    }
}

