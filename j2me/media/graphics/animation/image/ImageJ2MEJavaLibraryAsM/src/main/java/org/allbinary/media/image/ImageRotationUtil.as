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
    import org.allbinary.graphics.Anchor;

    public class ImageRotationUtil {
    private static var instance_value:ImageRotationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageRotationUtil {
        if (!ImageRotationUtil.instance_set) {
            ImageRotationUtil.instance_set = true;
            ImageRotationUtil.instance_value = new ImageRotationUtil();
        }
        return ImageRotationUtil.instance_value;
    }
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageRotationUtil():void {
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public static function getInstance():ImageRotationUtil {
        return ImageRotationUtil.instance;
    }
    

    public function ImageRotationUtil() {
        super();
        this.initFieldsImageRotationUtil();
    }
    

    public function createRotatedImage(originalImage:Image, rotationInDegrees:int):Image {
        return originalImage;
    }
    }
}

