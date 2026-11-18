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

    public class CssPropertyData {
    private static var instance_value:CssPropertyData;
    private static var instance_set:Boolean = false;
    private static function get instance():CssPropertyData {
        if (!CssPropertyData.instance_set) {
            CssPropertyData.instance_set = true;
            CssPropertyData.instance_value = new CssPropertyData();
        }
        return CssPropertyData.instance_value;
    }
        public var NAME:String = null;
        public var VALUES:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCssPropertyData():void {
    this.NAME = "CSS_PROPERTY_NAME";
    this.VALUES = "CSS_PROPERTY_VALUES";
        }
    

    public static function getInstance():CssPropertyData {
        return CssPropertyData.instance;
    }
    

    public function CssPropertyData() {
        super();
        this.initFieldsCssPropertyData();
    }
    }
}

