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
package org.allbinary.graphics.color {

    public class BasicColorUtil {
    private static var instance_value:BasicColorUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicColorUtil {
        if (!BasicColorUtil.instance_set) {
            BasicColorUtil.instance_set = true;
            BasicColorUtil.instance_value = new BasicColorUtil();
        }
        return BasicColorUtil.instance_value;
    }
        public var ZERO_ARRAY:Vector.<BasicColor> = null;
        public var ALPHA:int = 0;
        public var isAlpha:Boolean = false;
        public var ffOpaque:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsBasicColorUtil():void {
    this.ZERO_ARRAY = new Vector.<BasicColor>(0);
    this.ALPHA = int(0xFF000000);
    this.isAlpha = true;
    this.ffOpaque = true;
        }

        public function BasicColorUtil() {
            super();
            this.initFieldsBasicColorUtil();
        }
    

    public static function getInstance():BasicColorUtil {
        return BasicColorUtil.instance;
    }
    

    public function getRGB(red:int, green:int, blue:int):int {
        var value:int = 0;
        if (this.isAlpha) {
            if (this.ffOpaque) {
                value = this.ALPHA;
            }
        }
        value = (red << 16) | value;
        value = (green << 8) | value;
        value = blue | value;
        return value;
    }
    

    public function getARGB(alphaValue:int, r:int, g:int, b:int):int {
        return int(int(int(((alphaValue << 24) & this.ALPHA) + ((r << 16) & 0x00FF0000)) + ((g << 8) & 0x0000FF00)) + (b & 0x000000FF));
    }
    

    public function get_(alphaValue:int, color:int):int {
        return int(((alphaValue << 24) & this.ALPHA) + color);
    }
    

    public function invert(color:int):int {
        return (int(0xFFFFFF - color)) | this.ALPHA;
    }
    }
}

