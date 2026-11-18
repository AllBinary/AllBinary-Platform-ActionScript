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
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class ShaderManager {
    private static var instance_value:ShaderManager;
    private static var instance_set:Boolean = false;
    private static function get instance():ShaderManager {
        if (!ShaderManager.instance_set) {
            ShaderManager.instance_set = true;
            ShaderManager.instance_value = new ShaderManager(-1, -1);
        }
        return ShaderManager.instance_value;
    }
        public var LOAD_SHADER:String = null;
        public var commonStrings:CommonStrings = null;
        public var GL_VERTEX_SHADER:int = 0;
        public var GL_FRAGMENT_SHADER:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsShaderManager():void {
    this.LOAD_SHADER = "loadShader";
    this.commonStrings = CommonStrings.getInstance();
    
    
        }
    

    public static function getInstance():ShaderManager {
        return ShaderManager.instance;
    }
    

    public function ShaderManager(GL_VERTEX_SHADER:int, GL_FRAGMENT_SHADER:int) {
        super();
        this.initFieldsShaderManager();
        this.GL_VERTEX_SHADER = GL_VERTEX_SHADER;
        this.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER;
    }
    

    public function load(gl:GL10, resource:String, shaderAsStringArray:Vector.<String>, shaderType:int):int {
        return -1;
    }
    

    public function loadShader(gl:GL10, resource:String, stringList:BasicArrayList, shaderType:int):int {
        return -1;
    }
    }
}

