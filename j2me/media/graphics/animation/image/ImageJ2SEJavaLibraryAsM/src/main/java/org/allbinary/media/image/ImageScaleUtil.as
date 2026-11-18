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
    import java.awt.JGraphics2D;
    import java.awt.geom.JAffineTransform;
    import java.awt.image.JBufferedImage;
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
        private var imageUtil:ImageUtil = null;
        private var imageJ2SEUtil:ImageJ2SEUtil = null;
        private var imageCreationUtil:ImageCreationUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageScaleUtil():void {
    this.imageUtil = ImageUtil.getInstance();
    this.imageJ2SEUtil = ImageJ2SEUtil.getInstance();
    this.imageCreationUtil = ImageCreationUtil.getInstance();
        }
    

    public static function getInstance():ImageScaleUtil {
        return ImageScaleUtil.instance;
    }
    

    public function ImageScaleUtil() {
        super();
        this.initFieldsImageScaleUtil();
    }
    

    public function createImage2(imageCache:ImageCache, originalImage:Image, scaleNominatorX:Number, scaleDenominatorX:Number, scaleNominatorY:Number, scaleDenominatorY:Number, cached:Boolean):Image {
        return this.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true);
    }
    

    public function createImage3(imageCache:ImageCache, originalImage:Image, scaleNominatorX:Number, scaleDenominatorX:Number, scaleNominatorY:Number, scaleDenominatorY:Number, cached:Boolean, mutable:Boolean):Image {
        var width:int = originalImage.getWidth();
        var height:int = originalImage.getHeight();
        var scaleX:Number = scaleNominatorX / scaleDenominatorX;
        var scaleY:Number = scaleNominatorY / scaleDenominatorY;
        var image:Image = null;
        if (cached) {
            image = imageCache.get_(JSystem.className(this), JMath.toInt32((Number(width) * scaleX)), JMath.toInt32((Number(height) * scaleY)));
        } else {
            image = imageCache.get_("createImage", JMath.toInt32((Number(width) * scaleX)), JMath.toInt32((Number(height) * scaleY)));
        }
        this.scale(originalImage, image, scaleX, scaleY, true);
        return image;
    }
    

    public function scale2(originalImage:Image, originalImageArray:Vector.<Image>, ximageToShowArray:Vector.<Image>, unused:int, scaleX:Number, scaleY:Number, maxScaleX:Number, maxScaleY:Number):void {
        if (maxScaleX * originalImage.getWidth() > originalImageArray[0].getWidth() || maxScaleY * originalImage.getHeight() > originalImageArray[0].getHeight()) {
            originalImageArray[0] = this.imageCreationUtil.createImage(originalImage.getWidth(), originalImage.getHeight(), maxScaleX, maxScaleY);
        }
        this.scale(originalImage, originalImageArray[0], scaleX, scaleY, false);
    }
    

    public function scale(originalImage:Image, newMaxSizeImage:Image, scaleX:Number, scaleY:Number, clear:Boolean):void {
        var bufferedImage:BufferedImage = this.imageUtil.getBufferedImage(originalImage);
        var newBufferedImage:BufferedImage = this.imageUtil.getBufferedImage(newMaxSizeImage);
        var at:AffineTransform = AffineTransform.getScaleInstance(scaleX, scaleY);
        var g:Graphics2D = newBufferedImage.createGraphics();
        if (clear) {
            g.setBackground(this.imageJ2SEUtil.TRANSPARENT_COLOR);
            g.clearRect(0, 0, newBufferedImage.getWidth(), newBufferedImage.getHeight());
        }
        g.drawRenderedImage(bufferedImage, at);
        g.dispose();
    }
    }
}

