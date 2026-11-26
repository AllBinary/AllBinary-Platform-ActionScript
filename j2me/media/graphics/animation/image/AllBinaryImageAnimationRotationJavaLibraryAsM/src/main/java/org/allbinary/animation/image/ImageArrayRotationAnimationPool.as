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
package org.allbinary.animation.image {
    import org.allbinary.logic.util.cache.BasicArrayListResetablePool;
    import org.allbinary.logic.util.cache.CacheableInterface;
    import org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface;
    import org.allbinary.logic.util.cache.PoolInterface;

    public class ImageArrayRotationAnimationPool extends BasicArrayListResetablePool {
    private static var IMAGE_ROTATION_ANIMATION_POOL_value:PoolInterface;
    private static var IMAGE_ROTATION_ANIMATION_POOL_set:Boolean = false;
    private static function get IMAGE_ROTATION_ANIMATION_POOL():PoolInterface {
        if (!ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL_set) {
            ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL_set = true;
            ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL_value = new ImageArrayRotationAnimationPool(new ImageArrayRotationAnimationCacheableInterfaceFactory());
        }
        return ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL_value;
    }
    private static function set IMAGE_ROTATION_ANIMATION_POOL(value:PoolInterface):void {
        ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL_set = true;
        ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL_value = value;
    }
    

    public function ImageArrayRotationAnimationPool(cacheableInterfaceFactoryInterface:CacheableInterfaceFactoryInterface) {
        super(cacheableInterfaceFactoryInterface);
    }
    

    public static function getInstance():PoolInterface {
        return ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL;
    }
    

    override public function remove(key:Object):CacheableInterface {
        var cacheableInterface:CacheableInterface = super.remove(key);
        var allBinaryImageRotationAnimationInfo:ImageArrayRotationAnimationInfo = (key as ImageArrayRotationAnimationInfo);
        var imageArrayRotationAnimationCacheable:ImageArrayRotationAnimationCacheable = ((cacheableInterface as ImageArrayRotationAnimationCacheable));
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray());
        return cacheableInterface;
    }
    }
}

