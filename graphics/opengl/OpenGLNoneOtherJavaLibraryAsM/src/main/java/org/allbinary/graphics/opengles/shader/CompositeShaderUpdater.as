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
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;

    public class CompositeShaderUpdater extends ShaderUpdater {
    private static var instanceC_value:CompositeShaderUpdater;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():CompositeShaderUpdater {
        if (!CompositeShaderUpdater.instanceC_set) {
            CompositeShaderUpdater.instanceC_set = true;
            CompositeShaderUpdater.instanceC_value = new CompositeShaderUpdater(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY);
        }
        return CompositeShaderUpdater.instanceC_value;
    }
        public var commonSeps:CommonSeps = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompositeShaderUpdater():void {
    this.commonSeps = CommonSeps.getInstance();
        }
    

    public static function getInstance():CompositeShaderUpdater {
        return CompositeShaderUpdater.instanceC;
    }
    

    public function CompositeShaderUpdater(uniformBlockArray:Vector.<String>, uniformArray:Vector.<String>, attributeArray:Vector.<String>, attributeHandleArray:Vector.<int>) {
        super();
        this.initFieldsCompositeShaderUpdater();
    }
    

    override public function onSurfaceCreated(...args):void {
        if (args.length == 3) {
            this.onSurfaceCreated_jo3(args[0], args[1], args[2]);
            return;
        }
        super.onSurfaceCreated.apply(this, args);
    }

    private function onSurfaceCreated_jo3(gl:GL10, eglConfig:EGLConfig, programHandle:int):void {
    }
    

    public function onSurfaceDestroyed(gl:GL10):void {
    }
    }
}

