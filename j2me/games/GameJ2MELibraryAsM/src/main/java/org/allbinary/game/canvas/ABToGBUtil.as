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
package org.allbinary.game.canvas {
    import org.allbinary.game.layer.AllBinaryGameLayerManager;

    public class ABToGBUtil {
    private static var instance_value:ABToGBUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ABToGBUtil {
        if (!ABToGBUtil.instance_set) {
            ABToGBUtil.instance_set = true;
            ABToGBUtil.instance_value = new ABToGBUtil();
        }
        return ABToGBUtil.instance_value;
    }
        public var abCanvas:Canvas = null;
        public var allBinaryGameLayerManager:AllBinaryGameLayerManager = null;

        // Java field initializers run after the base constructor
        private function initFieldsABToGBUtil():void {
    this.abCanvas = NullCanvas.NULL_CANVAS;
    this.allBinaryGameLayerManager = AllBinaryGameLayerManager.getNullInstance();
        }

        public function ABToGBUtil() {
            super();
            this.initFieldsABToGBUtil();
        }
    

    public static function getInstance():ABToGBUtil {
        return ABToGBUtil.instance;
    }
    }
}

