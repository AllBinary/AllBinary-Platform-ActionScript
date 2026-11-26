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

    public class UniformTextureOpenGLProcessor extends OpenGLObject3dProcessor {
    

    public function UniformTextureOpenGLProcessor(shaderComposite:ShaderComposite, handleIndex:int) {
        super();
    }
    

    override public function process(...args):void {
        if (args.length == 3) {
            this.process_jo3(args[0], args[1], args[2]);
            return;
        }
        super.process.apply(this, args);
    }

    private function process_jo3(gl:GL10, unused:Object, index:int):void {
    }
    }
}

