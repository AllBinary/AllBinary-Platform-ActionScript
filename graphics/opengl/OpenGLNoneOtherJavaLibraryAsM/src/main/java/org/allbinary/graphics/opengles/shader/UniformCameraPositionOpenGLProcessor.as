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

    public class UniformCameraPositionOpenGLProcessor extends OpenGLObject3dProcessor {
    

    public function UniformCameraPositionOpenGLProcessor(shaderComposite:ShaderComposite, handleIndex:int) {
        super();
    }
    

    override public function process(...args):void {
        if (args.length == 2) {
            this.process_jo2(args[0], args[1]);
            return;
        }
        super.process.apply(this, args);
    }

    private function process_jo2(gl:GL10, anyType:Object):void {
    }
    }
}

