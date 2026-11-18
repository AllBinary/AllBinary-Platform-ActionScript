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
package org.allbinary.media.image {
    import org.allbinary.image.ImageCache;

    public class ImageScaleUtil {
    private static var instance_value:ImageScaleUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageScaleUtil {
        if (!ImageScaleUtil.instance_set) {
            ImageScaleUtil.instance_set = true;
            ImageScaleUtil.instance_value = new ImageScaleUtil();
        }
        return ImageScaleUtil.instance_value;
    }
    

    public static function getInstance():ImageScaleUtil {
        return ImageScaleUtil.instance;
    }
    

    public function ImageScaleUtil() {
        super();
    }
    

    public function createImage2(imageCache:ImageCache, originalImage:Image, scaleNominatorX:Number, scaleDenominatorX:Number, scaleNominatorY:Number, scaleDenominatorY:Number, cached:Boolean):Image {
        return this.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true);
    }
    

    public function createImage3(imageCache:ImageCache, originalImage:Image, scaleNominatorX:Number, scaleDenominatorX:Number, scaleNominatorY:Number, scaleDenominatorY:Number, cached:Boolean, mutable:Boolean):Image {
        return originalImage;
    }
    }
}

