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
package org.allbinary.graphics.form {
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.logic.string.StringUtil;

    public class FormTypeFactory {
    private static var instance_value:FormTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():FormTypeFactory {
        if (!FormTypeFactory.instance_set) {
            FormTypeFactory.instance_set = true;
            FormTypeFactory.instance_value = new FormTypeFactory();
        }
        return FormTypeFactory.instance_value;
    }
        public var UNK:String = null;
        public var NULL_FORM_TYPE:FormType = null;
        public var TEMP_HORIZONTAL_FORM:FormType = null;
        public var HORIZONTAL_FORM:FormType = null;
        public var VERTICAL_CENTER_FORM:FormType = null;

        // Java field initializers run after the base constructor
        private function initFieldsFormTypeFactory():void {
    this.UNK = "Unknown FormType";
    this.NULL_FORM_TYPE = new FormType(StringUtil.getInstance().NULL_STRING);
    this.TEMP_HORIZONTAL_FORM = new FormType("TempHorizontal");
    this.HORIZONTAL_FORM = new FormType("Horizontal");
    this.VERTICAL_CENTER_FORM = new FormType("Vertical");
        }

        public function FormTypeFactory() {
            super();
            this.initFieldsFormTypeFactory();
        }
    

    public static function getInstance():FormTypeFactory {
        return FormTypeFactory.instance;
    }
    

    public function getFormType():FormType {
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var formType:FormType = null;
        if (displayInfo.isPortrait()) {
            formType = this.VERTICAL_CENTER_FORM;
        } else {
            formType = this.HORIZONTAL_FORM;
        }
        return formType;
    }
    }
}

