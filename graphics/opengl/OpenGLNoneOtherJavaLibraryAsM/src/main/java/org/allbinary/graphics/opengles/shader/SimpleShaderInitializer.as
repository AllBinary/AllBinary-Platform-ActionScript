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

    public class SimpleShaderInitializer extends ShaderInitializer {
    private static var instanceC_value:SimpleShaderInitializer;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():SimpleShaderInitializer {
        if (!SimpleShaderInitializer.instanceC_set) {
            SimpleShaderInitializer.instanceC_set = true;
            SimpleShaderInitializer.instanceC_value = new SimpleShaderInitializer();
        }
        return SimpleShaderInitializer.instanceC_value;
    }
    

    public static function getInstance():SimpleShaderInitializer {
        return SimpleShaderInitializer.instanceC;
    }
    }
}

