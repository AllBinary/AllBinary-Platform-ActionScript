/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.graphics.opengles.renderer {

    public class RendererStrings {
    private static var instance_value:RendererStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():RendererStrings {
        if (!RendererStrings.instance_set) {
            RendererStrings.instance_set = true;
            RendererStrings.instance_value = new RendererStrings();
        }
        return RendererStrings.instance_value;
    }
        public var ON_SURFACE_CREATED:String = null;
        public var ON_SURFACE_CHANGED:String = null;
        public var ON_DRAW_FRAME:String = null;
        public var ON_DRAW_FRAME_THREED:String = null;
        public var ON_DRAW_FRAME_2D:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsRendererStrings():void {
    this.ON_SURFACE_CREATED = "onSurfaceCreated";
    this.ON_SURFACE_CHANGED = "onSurfaceChanged";
    this.ON_DRAW_FRAME = "onDrawFrame";
    this.ON_DRAW_FRAME_THREED = "onDrawFrameThreed";
    this.ON_DRAW_FRAME_2D = "onDrawFrame2d";
        }

        public function RendererStrings() {
            super();
            this.initFieldsRendererStrings();
        }
    

    public static function getInstance():RendererStrings {
        return RendererStrings.instance;
    }
    }
}

