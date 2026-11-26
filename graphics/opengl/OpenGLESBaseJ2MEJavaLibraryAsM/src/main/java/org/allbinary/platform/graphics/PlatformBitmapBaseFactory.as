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
    import javax.microedition.lcdui.Image;

    public class PlatformBitmapBaseFactory {
    private static var NULL_PLATFORM_BITMAP_BASE_FACTORY_value:PlatformBitmapBaseFactory;
    private static var NULL_PLATFORM_BITMAP_BASE_FACTORY_set:Boolean = false;
    public static function get NULL_PLATFORM_BITMAP_BASE_FACTORY():PlatformBitmapBaseFactory {
        if (!PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY_set) {
            PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY_set = true;
            PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY_value = new PlatformBitmapBaseFactory();
        }
        return PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY_value;
    }
    

    public function createBitmap(...args):* {
        if (args.length == 1) {
            return this.createBitmap_jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "createBitmap");
    }

    private function createBitmap_jo1(image:Image):PlatformBitmapBase {
        throw new JException("RuntimeException", "");
    }
    }
}

