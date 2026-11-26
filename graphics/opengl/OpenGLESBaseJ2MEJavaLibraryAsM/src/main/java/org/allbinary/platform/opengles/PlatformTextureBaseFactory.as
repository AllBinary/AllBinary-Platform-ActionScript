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
package org.allbinary.platform.opengles {
    import javax.microedition.khronos.opengles.GL10;
    import javax.microedition.lcdui.Image;
    import org.allbinary.string.CommonStrings;

    public class PlatformTextureBaseFactory {
    private static var NULL_PLATFORM_TEXTURE_BASE_FACTORY_value:PlatformTextureBaseFactory;
    private static var NULL_PLATFORM_TEXTURE_BASE_FACTORY_set:Boolean = false;
    public static function get NULL_PLATFORM_TEXTURE_BASE_FACTORY():PlatformTextureBaseFactory {
        if (!PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY_set) {
            PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY_set = true;
            PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY_value = new PlatformTextureBaseFactory();
        }
        return PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY_value;
    }
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlatformTextureBaseFactory():void {
    this.commonStrings = CommonStrings.getInstance();
        }

        public function PlatformTextureBaseFactory() {
            super();
            this.initFieldsPlatformTextureBaseFactory();
        }
    

    public function load(gl:GL10, target:int, level:int, image:Image, border:int, flip:Boolean):void {
    }
    }
}

