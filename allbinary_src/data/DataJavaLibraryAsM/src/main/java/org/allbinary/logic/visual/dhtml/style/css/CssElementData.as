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
package org.allbinary.logic.visual.dhtml.style.css {

    public class CssElementData {
    private static var instance_value:CssElementData;
    private static var instance_set:Boolean = false;
    private static function get instance():CssElementData {
        if (!CssElementData.instance_set) {
            CssElementData.instance_set = true;
            CssElementData.instance_value = new CssElementData();
        }
        return CssElementData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCssElementData():void {
    this.NAME = "CSS_ELEMENT_NAME";
        }
    

    public static function getInstance():CssElementData {
        return CssElementData.instance;
    }
    

    public function CssElementData() {
        super();
        this.initFieldsCssElementData();
    }
    }
}

