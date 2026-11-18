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

    public class ModifierOpenGLESImageProcessor extends OpenGLESImageProcessor {
    private static var instanceC_value:ModifierOpenGLESImageProcessor;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():ModifierOpenGLESImageProcessor {
        if (!ModifierOpenGLESImageProcessor.instanceC_set) {
            ModifierOpenGLESImageProcessor.instanceC_set = true;
            ModifierOpenGLESImageProcessor.instanceC_value = new ModifierOpenGLESImageProcessor();
        }
        return ModifierOpenGLESImageProcessor.instanceC_value;
    }
    

    override public static function getInstance():ModifierOpenGLESImageProcessor {
        return ModifierOpenGLESImageProcessor.instanceC;
    }
    }
}

