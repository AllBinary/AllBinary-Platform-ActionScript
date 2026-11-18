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
package org.allbinary.graphics.opengles.shader {

    public class NullOpenGLTextureProcessor {
    private static var instance_value:OpenGLObject3dProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLObject3dProcessor {
        if (!NullOpenGLTextureProcessor.instance_set) {
            NullOpenGLTextureProcessor.instance_set = true;
            NullOpenGLTextureProcessor.instance_value = new OpenGLObject3dProcessor();
        }
        return NullOpenGLTextureProcessor.instance_value;
    }
    

    public static function getInstance():OpenGLObject3dProcessor {
        return NullOpenGLTextureProcessor.instance;
    }
    }
}

