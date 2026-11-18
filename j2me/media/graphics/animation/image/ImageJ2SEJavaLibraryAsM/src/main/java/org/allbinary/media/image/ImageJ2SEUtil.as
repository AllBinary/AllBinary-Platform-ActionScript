/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.media.image {
    import java.awt.JColor;

    public class ImageJ2SEUtil {
    private static var instance_value:ImageJ2SEUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageJ2SEUtil {
        if (!ImageJ2SEUtil.instance_set) {
            ImageJ2SEUtil.instance_set = true;
            ImageJ2SEUtil.instance_value = new ImageJ2SEUtil();
        }
        return ImageJ2SEUtil.instance_value;
    }
        public var TRANSPARENT_COLOR:Color = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageJ2SEUtil():void {
    this.TRANSPARENT_COLOR = new Color(0, 0, 0, 0);
        }

        public function ImageJ2SEUtil() {
            super();
            this.initFieldsImageJ2SEUtil();
        }
    

    public static function getInstance():ImageJ2SEUtil {
        return ImageJ2SEUtil.instance;
    }
    }
}

