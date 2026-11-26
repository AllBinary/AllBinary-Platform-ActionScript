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
    import java.awt.image.JBufferedImage;
    import javax.microedition.lcdui.Image;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.microemu.device.j2se.J2SEImmutableImage;
    import org.microemu.device.j2se.J2SEMutableImage;

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
        private var imageJ2SERotationUtil:ImageJ2SERotationUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageRotationUtil():void {
    this.imageJ2SERotationUtil = ImageJ2SERotationUtil.getInstance();
        }
    

    public static function getInstance():ImageRotationUtil {
        return ImageRotationUtil.instance;
    }
    

    public function ImageRotationUtil() {
        super();
        this.initFieldsImageRotationUtil();
    }
    

    public function rotateImage(originalImage:Image, image:Image, totalAngle:int):void {
        if (image.isMutable()) {
            var j2seImage:J2SEMutableImage = (image as J2SEMutableImage);
            var newBufferedImage:JBufferedImage = (j2seImage.getImage() as JBufferedImage);
            var originalAwtImage:Image = null;
            if (originalImage.isMutable()) {
                originalJ2SEImage = (originalImage as J2SEMutableImage);
                originalAwtImage = (originalJ2SEImage.getImage() as Image);
            } else {
                var originalJ2SEImage:* = (originalImage as J2SEImmutableImage);
                originalAwtImage = (originalJ2SEImage.getImage() as Image);
            }
            this.imageJ2SERotationUtil.rotateImage(originalAwtImage, newBufferedImage, totalAngle);
        } else {
            PreLogUtil.putOE("Not Mutable", this, "getRotatedImage", new JException("Exception", ""));
        }
    }
    

    public function createRotatedImage(originalImage:Image, rotationInDegrees:int):Image {
        var image:Image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if (image.isMutable()) {
            var originalAwtImage:Image = null;
            if (originalImage.isMutable()) {
                originalJ2SEImage = (originalImage as J2SEMutableImage);
                originalAwtImage = (originalJ2SEImage.getImage() as Image);
            } else {
                var originalJ2SEImage:* = (originalImage as J2SEImmutableImage);
                originalAwtImage = (originalJ2SEImage.getImage() as Image);
            }
            var j2seImage:J2SEMutableImage = (image as J2SEMutableImage);
            var newBufferedImage:JBufferedImage = (j2seImage.getImage() as JBufferedImage);
            var bufferedImage:JBufferedImage = this.imageJ2SERotationUtil.createRotatedImage(originalAwtImage, newBufferedImage, rotationInDegrees);
            return image;
        } else {
            throw new JException("Exception", "Not Mutable");
        }
    }
    }
}

