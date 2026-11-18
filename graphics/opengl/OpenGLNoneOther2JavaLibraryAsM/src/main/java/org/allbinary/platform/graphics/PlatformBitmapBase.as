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
package org.allbinary.platform.graphics {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;

    public class PlatformBitmapBase {
    private static var NULL_PLATFORM_BITMAP_BASE_value:PlatformBitmapBase;
    private static var NULL_PLATFORM_BITMAP_BASE_set:Boolean = false;
    public static function get NULL_PLATFORM_BITMAP_BASE():PlatformBitmapBase {
        if (!PlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE_set) {
            PlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE_set = true;
            PlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE_value = new PlatformBitmapBase();
        }
        return PlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE_value;
    }
        public var alpha:int = 0;
        public var basicColor:BasicColor = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlatformBitmapBase():void {
    this.alpha = 255;
    this.basicColor = BasicColorFactory.getInstance().NULL_COLOR;
        }

        public function PlatformBitmapBase() {
            super();
            this.initFieldsPlatformBitmapBase();
        }
    

    public function getWidth():int {
        return 0;
    }
    

    public function getHeight():int {
        return 0;
    }
    

    public function getImage():Image {
        return NullImage.NULL_IMAGE;
    }
    }
}

