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
    import javax.microedition.khronos.egl.EGLConfig;
    import javax.microedition.khronos.opengles.GL10;
    import org.allbinary.graphics.opengles.renderer.RendererStrings;
    import org.allbinary.string.CommonStrings;

    public class ShaderUpdater {
    private static var instance_value:ShaderUpdater;
    private static var instance_set:Boolean = false;
    private static function get instance():ShaderUpdater {
        if (!ShaderUpdater.instance_set) {
            ShaderUpdater.instance_set = true;
            ShaderUpdater.instance_value = new ShaderUpdater();
        }
        return ShaderUpdater.instance_value;
    }
        public var commonStrings:CommonStrings = null;
        public var rendererStrings:RendererStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsShaderUpdater():void {
    this.commonStrings = CommonStrings.getInstance();
    this.rendererStrings = RendererStrings.getInstance();
        }

        public function ShaderUpdater() {
            super();
            this.initFieldsShaderUpdater();
        }
    

    public static function getInstance():ShaderUpdater {
        return ShaderUpdater.instance;
    }
    

    public function onSurfaceCreated(...args):void {
        if (args.length == 2) {
            this.onSurfaceCreated_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "onSurfaceCreated");
    }

    private function onSurfaceCreated_jo2(gl:GL10, eglConfig:EGLConfig):void {
    }
    }
}

