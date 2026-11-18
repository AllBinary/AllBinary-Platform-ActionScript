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
package org.allbinary.graphics {

    public class GraphicsStrings {
    private static var instance_value:GraphicsStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():GraphicsStrings {
        if (!GraphicsStrings.instance_set) {
            GraphicsStrings.instance_set = true;
            GraphicsStrings.instance_value = new GraphicsStrings();
        }
        return GraphicsStrings.instance_value;
    }
        public var ANIMATION:String = null;
        public var ANGLE:String = null;
        public var MOVEMENT_ANGLE:String = null;
        public var ROTATION:String = null;
        public var OPACITY:String = null;
        public var HTML:String = null;
        public var WIDTH:String = null;
        public var HEIGHT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGraphicsStrings():void {
    this.ANIMATION = "animation";
    this.ANGLE = "angle";
    this.MOVEMENT_ANGLE = "movement_angle";
    this.ROTATION = "rotation";
    this.OPACITY = "opacity";
    this.HTML = "HTML";
    this.WIDTH = "width";
    this.HEIGHT = "height";
        }

        public function GraphicsStrings() {
            super();
            this.initFieldsGraphicsStrings();
        }
    

    public static function getInstance():GraphicsStrings {
        return GraphicsStrings.instance;
    }
    }
}

