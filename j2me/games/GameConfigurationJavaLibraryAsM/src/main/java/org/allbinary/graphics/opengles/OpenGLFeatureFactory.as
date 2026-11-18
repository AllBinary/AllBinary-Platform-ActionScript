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

    public class OpenGLFeatureFactory {
    private static var instance_value:OpenGLFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLFeatureFactory {
        if (!OpenGLFeatureFactory.instance_set) {
            OpenGLFeatureFactory.instance_set = true;
            OpenGLFeatureFactory.instance_value = new OpenGLFeatureFactory();
        }
        return OpenGLFeatureFactory.instance_value;
    }
        public var OPENGL_OPTIONS:OpenGLFeature = null;
        public var OPENGL:OpenGLFeature = null;
        public var OPENGL_SURFACE_VIEW:OpenGLFeature = null;
        public var OPENGL_2D:OpenGLFeature = null;
        public var OPENGL_3D:OpenGLFeature = null;
        public var OPENGL_2D_AND_3D:OpenGLFeature = null;
        public var OPENGL_AUTO_SELECT:OpenGLFeature = null;
        public var OPENGL_MINIMUM:OpenGLFeature = null;
        public var OPENGL_AS_GAME_THREAD:OpenGLFeature = null;
        public var OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS:OpenGLFeature = null;
        public var IMAGE_COLOR_DEPTH_4444:OpenGLFeature = null;
        public var IMAGE_COLOR_DEPTH_8888:OpenGLFeature = null;
        public var IMAGE_COLOR_DEPTH_565:OpenGLFeature = null;
        public var OPENGL_COLOR_DEPTH_4444:OpenGLFeature = null;
        public var OPENGL_COLOR_DEPTH_8888:OpenGLFeature = null;
        public var OPENGL_COLOR_DEPTH_565:OpenGLFeature = null;
        public var OPENGL_DRAW_TEXTURE:OpenGLFeature = null;
        public var OPENGL_VERTEX_BUFFER_OBJECT:OpenGLFeature = null;
        public var OPENGL_SIMPLE_OBJECT3D_PROCESSOR:OpenGLFeature = null;
        public var OPENGL_COMPLEX_OBJECT3D_PROCESSOR:OpenGLFeature = null;
        public var OPENGL_SIMPLE_TEXTURE_PROCESSOR:OpenGLFeature = null;
        public var OPENGL_COMPLEX_TEXTURE_PROCESSOR:OpenGLFeature = null;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLFeatureFactory():void {
    this.OPENGL_OPTIONS = new OpenGLFeature("OpenGL Options");
    this.OPENGL = new OpenGLFeature("OpenGL");
    this.OPENGL_SURFACE_VIEW = new OpenGLFeature("GLSurfaceView");
    this.OPENGL_2D = new OpenGLFeature("OpenGL 2D");
    this.OPENGL_3D = new OpenGLFeature("OpenGL 3D");
    this.OPENGL_2D_AND_3D = new OpenGLFeature("OpenGL 2D/3D");
    this.OPENGL_AUTO_SELECT = new OpenGLFeature("Auto Select");
    this.OPENGL_MINIMUM = new OpenGLFeature("Minimum");
    this.OPENGL_AS_GAME_THREAD = new OpenGLFeature("As game thread");
    this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = new OpenGLFeature("As different threads");
    this.IMAGE_COLOR_DEPTH_4444 = new OpenGLFeature("4444");
    this.IMAGE_COLOR_DEPTH_8888 = new OpenGLFeature("8888");
    this.IMAGE_COLOR_DEPTH_565 = new OpenGLFeature("565");
    this.OPENGL_COLOR_DEPTH_4444 = new OpenGLFeature("4444");
    this.OPENGL_COLOR_DEPTH_8888 = new OpenGLFeature("8888");
    this.OPENGL_COLOR_DEPTH_565 = new OpenGLFeature("565");
    this.OPENGL_DRAW_TEXTURE = new OpenGLFeature("GL_OES_draw_texture");
    this.OPENGL_VERTEX_BUFFER_OBJECT = new OpenGLFeature("vertex_buffer_object");
    this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = new OpenGLFeature("Simple Object3d Processor");
    this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = new OpenGLFeature("Complex Object3d Processor");
    this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = new OpenGLFeature("Simple Texture Processor");
    this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = new OpenGLFeature("Complex Texture Processor");
        }
    

    public static function getInstance():OpenGLFeatureFactory {
        return OpenGLFeatureFactory.instance;
    }
    

    public function OpenGLFeatureFactory() {
        super();
        this.initFieldsOpenGLFeatureFactory();
    }
    }
}

