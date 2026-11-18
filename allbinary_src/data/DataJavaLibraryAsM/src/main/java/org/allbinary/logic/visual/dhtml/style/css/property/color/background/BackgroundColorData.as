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
package org.allbinary.logic.visual.dhtml.style.css.property.color.background {

    public class BackgroundColorData {
    private static var instance_value:BackgroundColorData;
    private static var instance_set:Boolean = false;
    private static function get instance():BackgroundColorData {
        if (!BackgroundColorData.instance_set) {
            BackgroundColorData.instance_set = true;
            BackgroundColorData.instance_value = new BackgroundColorData();
        }
        return BackgroundColorData.instance_value;
    }
        public var VALUE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBackgroundColorData():void {
    this.VALUE = "background-color";
        }
    

    public static function getInstance():BackgroundColorData {
        return BackgroundColorData.instance;
    }
    

    public function BackgroundColorData() {
        super();
        this.initFieldsBackgroundColorData();
    }
    }
}

