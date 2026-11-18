/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

    public class OpenGLESImageTranslate {
    private static var instance_value:OpenGLESImageTranslate;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLESImageTranslate {
        if (!OpenGLESImageTranslate.instance_set) {
            OpenGLESImageTranslate.instance_set = true;
            OpenGLESImageTranslate.instance_value = new OpenGLESImageTranslate();
        }
        return OpenGLESImageTranslate.instance_value;
    }
    

    public static function getInstance():OpenGLESImageTranslate {
        return OpenGLESImageTranslate.instance;
    }
    

    public function translate(gl:GL10, openGLESImage:OpenGLESImage, x:Number, y:Number):void {
    }
    

    public function translate2(gl:GL10, openGLESImage:OpenGLESImage):void {
    }
    }
}

