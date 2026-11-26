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
package org.allbinary.image.opengles {
    import javax.microedition.lcdui.Image;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class OpenGLESImageExclusionUtil {
    private static var instance_value:OpenGLESImageExclusionUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLESImageExclusionUtil {
        if (!OpenGLESImageExclusionUtil.instance_set) {
            OpenGLESImageExclusionUtil.instance_set = true;
            OpenGLESImageExclusionUtil.instance_value = new OpenGLESImageExclusionUtil();
        }
        return OpenGLESImageExclusionUtil.instance_value;
    }
        public var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLESImageExclusionUtil():void {
    this.list = new BasicArrayListD();
        }

        public function OpenGLESImageExclusionUtil() {
            super();
            this.initFieldsOpenGLESImageExclusionUtil();
        }
    

    public static function getInstance():OpenGLESImageExclusionUtil {
        return OpenGLESImageExclusionUtil.instance;
    }
    

    public function isCustomScaling(image:Image):Boolean {
        return false;
    }
    }
}

