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
package org.allbinary.logic.visual.transform.template.customizer.widgets.logo {

    public class LogoData {
    private static var instance_value:LogoData;
    private static var instance_set:Boolean = false;
    private static function get instance():LogoData {
        if (!LogoData.instance_set) {
            LogoData.instance_set = true;
            LogoData.instance_value = new LogoData();
        }
        return LogoData.instance_value;
    }
        public var NAME:String = null;
        public var IMAGEPATH:String = null;
        public var IMAGEFILENAME:String = null;
        public var IMAGE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogoData():void {
    this.NAME = "LOGO_NAME";
    this.IMAGEPATH = "LOGO_IMAGE_PATH";
    this.IMAGEFILENAME = "LOGO_IMAGE_FILE_NAME";
    this.IMAGE = "LOGO_IMAGE";
        }
    

    public static function getInstance():LogoData {
        return LogoData.instance;
    }
    

    public function LogoData() {
        super();
        this.initFieldsLogoData();
    }
    }
}

