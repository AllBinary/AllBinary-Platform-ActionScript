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
    import org.allbinary.graphics.opengles.NullOpenGLProcessorFactory;
    import org.allbinary.graphics.opengles.OpenGLProcessor;
    import org.allbinary.logic.string.StringUtil;

    public class ShaderComposite {
        public var disableProgramShaderOpenGLProcessor:OpenGLProcessor = null;
        public var requiresOpenGLVersion:String = null;
        public var shaderArray:Vector.<Shader> = null;
        public var shaderInitializer:ShaderInitializer = null;
        public var compositeShaderUpdater:CompositeShaderUpdater = null;
        public var modelViewProjection:ModelViewProjection = null;
        public var colorOpenGLProcessor:OpenGLProcessor = null;
        public var vertexOpenGLProcessor:OpenGLProcessor = null;
        public var useProgramShaderOpenGLProcessor:OpenGLProcessor = null;
        public var shaderMatrixOpenGLProcessor:OpenGLProcessor = null;
        public var colorEnableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var normalEnableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var vertexEnableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var textureEnableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var colorDisableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var normalDisableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var vertexDisableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var textureDisableVertexAttribArrayOpenGLProcessor:OpenGLProcessor = null;
        public var uniformLightPositionOpenGLProcessor:OpenGLObject3dProcessor = null;
        public var uniformLightColorOpenGLProcessor:OpenGLObject3dProcessor = null;
        public var uniformCameraPositionOpenGLProcessor:OpenGLObject3dProcessor = null;
        public var uniformTextureUnitOpenGLProcessor:OpenGLObject3dProcessor = null;
        public var programHandle:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsShaderComposite():void {
    
    
    
    
    
    
    
    
    this.useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.programHandle = 0;
        }
    

    public function ShaderComposite(requiresOpenGLVersion:String, shaderArray:Vector.<Shader>, compositeShaderUpdater:CompositeShaderUpdater, shaderInitializer:ShaderInitializer, modelViewProjection:ModelViewProjection, colorOpenGLProcessor:OpenGLProcessor, vertexOpenGLProcessor:OpenGLProcessor, disableProgramShaderOpenGLProcessor:OpenGLProcessor) {
        super();
        this.initFieldsShaderComposite();
        this.requiresOpenGLVersion = requiresOpenGLVersion;
        this.shaderArray = shaderArray;
        this.shaderInitializer = shaderInitializer;
        this.compositeShaderUpdater = compositeShaderUpdater;
        this.modelViewProjection = modelViewProjection;
        this.colorOpenGLProcessor = colorOpenGLProcessor;
        this.vertexOpenGLProcessor = vertexOpenGLProcessor;
        this.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor;
    }
    

    public function init(gl:GL10):void {
        this.programHandle = this.shaderInitializer.init(gl, this.shaderArray, StringUtil.getInstance().getArrayInstance());
    }
    }
}

