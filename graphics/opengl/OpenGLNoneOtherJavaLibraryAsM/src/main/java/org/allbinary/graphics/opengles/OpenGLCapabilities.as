/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
package org.allbinary.graphics.opengles {
    import org.allbinary.logic.string.StringUtil;

    public class OpenGLCapabilities {
    private static var instance_value:OpenGLCapabilities;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLCapabilities {
        if (!OpenGLCapabilities.instance_set) {
            OpenGLCapabilities.instance_set = true;
            OpenGLCapabilities.instance_value = new OpenGLCapabilities();
        }
        return OpenGLCapabilities.instance_value;
    }
        public var CUSTOM_GL_SURFACE_VIEW:Boolean = false;
        public var VERSION_1_0:String = null;
        public var VERSION_1_1:String = null;
        public var VERSION_2_0:String = null;
        public var VERSION_3_0:String = null;
        public var VERSION_3_1:String = null;
        public var VERSION_3_2:String = null;
        public var VERSION_HIGHER_THAN_EXISTS:String = null;
        private var glVersion:String = null;
        public var shaderVersion:int = 0;
        public var glInstanceVersion:String = null;
        public var maxTextureSize:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLCapabilities():void {
    this.CUSTOM_GL_SURFACE_VIEW = true;
    this.VERSION_1_0 = "1.0";
    this.VERSION_1_1 = "1.1";
    this.VERSION_2_0 = "2.0";
    this.VERSION_3_0 = "3.0";
    this.VERSION_3_1 = "3.1";
    this.VERSION_3_2 = "3.2";
    this.VERSION_HIGHER_THAN_EXISTS = "999.999";
    this.glVersion = StringUtil.getInstance().EMPTY_STRING;
    this.shaderVersion = 0;
    this.glInstanceVersion = StringUtil.getInstance().EMPTY_STRING;
    this.maxTextureSize = 64;
        }
    

    public static function getInstance():OpenGLCapabilities {
        return OpenGLCapabilities.instance;
    }
    

    public function OpenGLCapabilities() {
        super();
        this.initFieldsOpenGLCapabilities();
    }
    

    public function isInitialized():Boolean {
        return true;
    }
    

    public function initCapabilities(gl:Object):void {
    }
    

    public function isGlExtensionDrawTexture():Boolean {
        return false;
    }
    

    public function getGlVersion():String {
        return this.glVersion;
    }
    

    public function isVertexBufferObjectSupport():Boolean {
        return false;
    }
    

    public function isTextureSizeValid(widthAndHeight:int):Boolean {
        return true;
    }
    }
}

