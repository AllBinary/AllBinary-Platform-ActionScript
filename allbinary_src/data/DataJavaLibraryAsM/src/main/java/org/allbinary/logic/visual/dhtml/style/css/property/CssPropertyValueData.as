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
package org.allbinary.logic.visual.dhtml.style.css.property {

    public class CssPropertyValueData {
    private static var instance_value:CssPropertyValueData;
    private static var instance_set:Boolean = false;
    private static function get instance():CssPropertyValueData {
        if (!CssPropertyValueData.instance_set) {
            CssPropertyValueData.instance_set = true;
            CssPropertyValueData.instance_value = new CssPropertyValueData();
        }
        return CssPropertyValueData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCssPropertyValueData():void {
    this.NAME = "CSS_PROPERTY_VALUE";
        }
    

    public static function getInstance():CssPropertyValueData {
        return CssPropertyValueData.instance;
    }
    

    public function CssPropertyValueData() {
        super();
        this.initFieldsCssPropertyValueData();
    }
    }
}

