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
package org.allbinary.image.opengles {
    import org.allbinary.image.ImageCache;

    //OpenGLESNullImageJavaLibrary
    public class OpenGLImageCacheFactory {
    private static var IMAGE_CACHE_value:ImageCache;
    private static var IMAGE_CACHE_set:Boolean = false;
    private static function get IMAGE_CACHE():ImageCache {
        if (!OpenGLImageCacheFactory.IMAGE_CACHE_set) {
            OpenGLImageCacheFactory.IMAGE_CACHE_set = true;
            OpenGLImageCacheFactory.IMAGE_CACHE_value = ImageCache.NULL_IMAGE_CACHE;
        }
        return OpenGLImageCacheFactory.IMAGE_CACHE_value;
    }
    private static function set IMAGE_CACHE(value:ImageCache):void {
        OpenGLImageCacheFactory.IMAGE_CACHE_set = true;
        OpenGLImageCacheFactory.IMAGE_CACHE_value = value;
    }
    

    public static function getInstance():ImageCache {
        return OpenGLImageCacheFactory.IMAGE_CACHE;
    }
    

    public static function init():void {
        if (OpenGLImageCacheFactory.IMAGE_CACHE == null) {
        }
    }
    }
}

