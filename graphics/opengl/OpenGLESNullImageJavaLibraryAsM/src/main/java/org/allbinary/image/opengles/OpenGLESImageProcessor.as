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

    public class OpenGLESImageProcessor {
    private static var instance_value:OpenGLESImageProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLESImageProcessor {
        if (!OpenGLESImageProcessor.instance_set) {
            OpenGLESImageProcessor.instance_set = true;
            OpenGLESImageProcessor.instance_value = new OpenGLESImageProcessor();
        }
        return OpenGLESImageProcessor.instance_value;
    }
    

    public static function getInstance():OpenGLESImageProcessor {
        return OpenGLESImageProcessor.instance;
    }
    

    public function translate(gl:GL10, translateX:Number, translateY:Number):void {
    }
    

    public function rotate(gl:GL10, angle:Number):void {
    }
    

    public function scale(gl:GL10, scaleX:Number, scaleY:Number):void {
    }
    

    public function colorMask(gl:GL10, red:Number, green:Number, blue:Number, alpha:Number):void {
    }
    }
}

