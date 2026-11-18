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
package org.allbinary.image {

    public class ImageCacheFactory {
    private static var IMAGE_CACHE_value:ImageCache;
    private static var IMAGE_CACHE_set:Boolean = false;
    private static function get IMAGE_CACHE():ImageCache {
        if (!ImageCacheFactory.IMAGE_CACHE_set) {
            ImageCacheFactory.IMAGE_CACHE_set = true;
            ImageCacheFactory.IMAGE_CACHE_value = new ImageCache();
        }
        return ImageCacheFactory.IMAGE_CACHE_value;
    }
    

    public static function getInstance():ImageCache {
        return ImageCacheFactory.IMAGE_CACHE;
    }
    

    public static function init():void {
    }
    }
}

