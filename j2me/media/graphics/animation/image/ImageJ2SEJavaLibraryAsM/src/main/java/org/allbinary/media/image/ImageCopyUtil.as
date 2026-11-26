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
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.microemu.device.j2se.J2SEImmutableImage;

    public class ImageCopyUtil {
    private static var instance_value:ImageCopyUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageCopyUtil {
        if (!ImageCopyUtil.instance_set) {
            ImageCopyUtil.instance_set = true;
            ImageCopyUtil.instance_value = new ImageCopyUtil();
        }
        return ImageCopyUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var imageUtil:ImageUtil = null;
        private var imageCreationUtil:ImageCreationUtil = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageCopyUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.imageUtil = ImageUtil.getInstance();
    this.imageCreationUtil = ImageCreationUtil.getInstance();
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public static function getInstance():ImageCopyUtil {
        return ImageCopyUtil.instance;
    }
    

    public function ImageCopyUtil() {
        super();
        this.initFieldsImageCopyUtil();
    }
    

    public function createImageForRotation(originalImage:Image):Image {
        return this.createImage(originalImage);
    }
    

    public function createImage(originalImage:Image):Image {
        var image:Image = this.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, this.anchor);
            return image;
        } else {
            throw new JException("Exception", "Not Mutable");
        }
    }
    

    public function createImageScale(originalImage:Image, canvasScale:Number, resize:Boolean):Image {
        var newWidth:int = JMath.toInt32((Number(originalImage.getWidth()) * canvasScale));
        var newHeight:int = JMath.toInt32((Number(originalImage.getHeight()) * canvasScale));
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight;
            }
            if (newHeight < newWidth) {
                newHeight = newWidth;
            }
        }
        var originalBufferedImage:JBufferedImage = this.imageUtil.getBufferedImage(originalImage);
        var bufferedImage:JBufferedImage = this.imageUtil.createBufferedImageWithLargerCanvas(originalBufferedImage, newWidth, newHeight);
        var image:J2SEImmutableImage = new J2SEImmutableImage(bufferedImage);
        return image;
    }
    }
}

