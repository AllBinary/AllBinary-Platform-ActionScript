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

    public class ImageToRotationImageArrayUtil {
    private static var instance_value:ImageToRotationImageArrayUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageToRotationImageArrayUtil {
        if (!ImageToRotationImageArrayUtil.instance_set) {
            ImageToRotationImageArrayUtil.instance_set = true;
            ImageToRotationImageArrayUtil.instance_value = new ImageToRotationImageArrayUtil();
        }
        return ImageToRotationImageArrayUtil.instance_value;
    }
    

    public static function getInstance():ImageToRotationImageArrayUtil {
        return ImageToRotationImageArrayUtil.instance;
    }
    

    public function ImageToRotationImageArrayUtil() {
        super();
    }
    

    public function generate(image:Image, angleIncrement:int, totalAngle:int):Vector.<Image> {
        var imageRotationUtil:ImageRotationUtil = ImageRotationUtil.getInstance();
        var totalFrames:int = int(totalAngle / angleIncrement);
        var imageArray:Vector.<Image> = new Vector.<Image>(totalFrames);
        imageArray[0] = image;
        for (var index:int = 1; index < totalFrames; index++) {
            imageArray[index] = imageRotationUtil.createRotatedImage(image, int(index * angleIncrement));
        }
        return imageArray;
    }
    }
}

