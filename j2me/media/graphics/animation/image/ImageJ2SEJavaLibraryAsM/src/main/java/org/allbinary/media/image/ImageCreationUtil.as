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
    import javax.microedition.lcdui.Image;
    import org.allbinary.image.GameFeatureImageCacheFactory;

    public class ImageCreationUtil {
    private static var instance_value:ImageCreationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageCreationUtil {
        if (!ImageCreationUtil.instance_set) {
            ImageCreationUtil.instance_set = true;
            ImageCreationUtil.instance_value = new ImageCreationUtil();
        }
        return ImageCreationUtil.instance_value;
    }
    

    public static function getInstance():ImageCreationUtil {
        return ImageCreationUtil.instance;
    }
    

    public function ImageCreationUtil() {
        super();
    }
    

    public function createImageWH(width:int, height:int):Image {
        var image:Image = GameFeatureImageCacheFactory.getInstance().get_(JSystem.className(this), width, height);
        return image;
    }
    

    public function createImage(width:int, height:int, maxScaleX:Number, maxScaleY:Number):Image {
        var image:Image = GameFeatureImageCacheFactory.getInstance().get_(JSystem.className(this), int(JMath.toInt32((Number(width) * maxScaleX)) + 1), int(JMath.toInt32((Number(height) * maxScaleY)) + 1));
        return image;
    }
    }
}

