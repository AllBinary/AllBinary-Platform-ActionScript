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

    public class ShaderManagerFactory {
    private static var instance_value:ShaderManagerFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ShaderManagerFactory {
        if (!ShaderManagerFactory.instance_set) {
            ShaderManagerFactory.instance_set = true;
            ShaderManagerFactory.instance_value = new ShaderManagerFactory();
        }
        return ShaderManagerFactory.instance_value;
    }
    

    public static function getInstance():ShaderManagerFactory {
        return ShaderManagerFactory.instance;
    }
    

    public function create():ShaderManager {
        return ShaderManager.getInstance();
    }
    }
}

