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
    import javax.microedition.khronos.opengles.GL10;
    import org.allbinary.string.CommonStrings;

    public class ShaderInitializer {
    private static var instance_value:ShaderInitializer;
    private static var instance_set:Boolean = false;
    private static function get instance():ShaderInitializer {
        if (!ShaderInitializer.instance_set) {
            ShaderInitializer.instance_set = true;
            ShaderInitializer.instance_value = new ShaderInitializer();
        }
        return ShaderInitializer.instance_value;
    }
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsShaderInitializer():void {
    this.commonStrings = CommonStrings.getInstance();
        }

        public function ShaderInitializer() {
            super();
            this.initFieldsShaderInitializer();
        }
    

    public static function getInstance():ShaderInitializer {
        return ShaderInitializer.instance;
    }
    

    public function init(gl:GL10, shader:Vector.<Shader>, attributeArray:Vector.<String>):int {
        return -1;
    }
    }
}

