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
package org.allbinary.logic.visual.theme {

    public class ThemesData {
    private static var instance_value:ThemesData;
    private static var instance_set:Boolean = false;
    private static function get instance():ThemesData {
        if (!ThemesData.instance_set) {
            ThemesData.instance_set = true;
            ThemesData.instance_value = new ThemesData();
        }
        return ThemesData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsThemesData():void {
    this.NAME = "THEMES_NAME";
        }
    

    public static function getInstance():ThemesData {
        return ThemesData.instance;
    }
    

    public function ThemesData() {
        super();
        this.initFieldsThemesData();
    }
    }
}

