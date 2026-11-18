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
package org.allbinary.logic.visual.dhtml.style.css.property.font {

    public class FontFamilyData {
    private static var instance_value:FontFamilyData;
    private static var instance_set:Boolean = false;
    private static function get instance():FontFamilyData {
        if (!FontFamilyData.instance_set) {
            FontFamilyData.instance_set = true;
            FontFamilyData.instance_value = new FontFamilyData();
        }
        return FontFamilyData.instance_value;
    }
        public var NAME:String = null;
        public var VALUE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFontFamilyData():void {
    this.NAME = "FONT_FAMILY_NAME";
    this.VALUE = "font-family";
        }
    

    public static function getInstance():FontFamilyData {
        return FontFamilyData.instance;
    }
    

    public function FontFamilyData() {
        super();
        this.initFieldsFontFamilyData();
    }
    }
}

