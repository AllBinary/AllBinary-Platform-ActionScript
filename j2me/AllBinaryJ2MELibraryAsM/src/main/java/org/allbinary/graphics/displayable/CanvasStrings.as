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
package org.allbinary.graphics.displayable {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;

    public class CanvasStrings {
    private static var instance_value:CanvasStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():CanvasStrings {
        if (!CanvasStrings.instance_set) {
            CanvasStrings.instance_set = true;
            CanvasStrings.instance_value = new CanvasStrings();
        }
        return CanvasStrings.instance_value;
    }
        public var CONSTRUCTOR:String = null;
        public var PAUSE:String = null;
        public var UN_PAUSE:String = null;
        public var SET_FULL_SCREEN_MODE:String = null;
        public var SIZE_CHANGED:String = null;
        public var SCALED_IMAGES:String = null;
        public var PAINT:String = null;
        public var ON_DISPLAY_CHANGE_EVENT:String = null;
        public var UPDATE_MEASUREMENT:String = null;
        public var FD_WIDTH:String = null;
        public var FD_HEIGHT:String = null;
        public var EMPTY_CHILD_NAME_LIST:BasicArrayList = null;
        public var ABOUT:String = null;
        public var OPTIONS:String = null;
        public var FONT_ATLAS:String = null;
        public var OBJ_MODEL:String = null;
        public var MD2_MODEL:String = null;
        public var _PNG:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCanvasStrings():void {
    this.CONSTRUCTOR = "MyCanvas::MyCanvas";
    this.PAUSE = "MyCanvas::pause";
    this.UN_PAUSE = "MyCanvas::unPause";
    this.SET_FULL_SCREEN_MODE = "setFullScreenMode";
    this.SIZE_CHANGED = "sizeChanged";
    this.SCALED_IMAGES = "scaledImages";
    this.PAINT = "paint";
    this.ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent";
    this.UPDATE_MEASUREMENT = "updateMeasurement";
    this.FD_WIDTH = " font/display width: ";
    this.FD_HEIGHT = " font/display height: ";
    this.EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.ABOUT = "About";
    this.OPTIONS = "Options";
    this.FONT_ATLAS = "/font.png";
    this.OBJ_MODEL = "_obj";
    this.MD2_MODEL = "_md2";
    this._PNG = ".png";
        }

        public function CanvasStrings() {
            super();
            this.initFieldsCanvasStrings();
        }
    

    public static function getInstance():CanvasStrings {
        return CanvasStrings.instance;
    }
    }
}

