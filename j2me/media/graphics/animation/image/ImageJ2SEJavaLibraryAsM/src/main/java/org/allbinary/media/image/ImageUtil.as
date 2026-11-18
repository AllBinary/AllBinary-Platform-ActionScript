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
    import java.awt.JGraphicsConfiguration;
    import java.awt.JGraphicsDevice;
    import java.awt.JGraphicsEnvironment;
    import java.awt.JTransparency;
    import java.awt.geom.JAffineTransform;
    import java.awt.image.JBufferedImage;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.microemu.device.j2se.J2SEImmutableImage;
    import org.microemu.device.j2se.J2SEMutableImage;

    public class ImageUtil {
    private static var instance_value:ImageUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageUtil {
        if (!ImageUtil.instance_set) {
            ImageUtil.instance_set = true;
            ImageUtil.instance_value = new ImageUtil();
        }
        return ImageUtil.instance_value;
    }
        private var commonStrings:CommonStrings = null;
        private var commonSeps:CommonSeps = null;
        private var IIOIMAGE_POOL_NAME:String = null;
        private var CREATE_BUFFERED_IMAGE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageUtil():void {
    this.commonStrings = CommonStrings.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.IIOIMAGE_POOL_NAME = "IIOIMAGE_POOL_NAME";
    this.CREATE_BUFFERED_IMAGE = "createBufferedImage";
        }
    

    public static function getInstance():ImageUtil {
        return ImageUtil.instance;
    }
    

    public function ImageUtil() {
        super();
        this.initFieldsImageUtil();
    }
    

    private function getDefaultConfiguration():GraphicsConfiguration {
        var ge:GraphicsEnvironment = GraphicsEnvironment.getLocalGraphicsEnvironment();
        var gd:GraphicsDevice = ge.getDefaultScreenDevice();
        return gd.getDefaultConfiguration();
    }
    

    public function create(width:int, height:int):BufferedImage {
        var graphicsConfiguration:GraphicsConfiguration = this.getDefaultConfiguration();
        return graphicsConfiguration.createCompatibleImage(width, height, Transparency.TRANSLUCENT);
    }
    

    public function createBufferedImageForResize(bufferedImageArray:Vector.<BufferedImage>, percent:int, scale:Boolean):Vector.<BufferedImage> {
        var size:int = bufferedImageArray.length;
        var scaledBufferedImageArray:Vector.<BufferedImage> = new Vector.<BufferedImage>(size);
        var bufferedImage:BufferedImage = null;
        for (var index:int = 0; index < size; index++) {
            bufferedImage = bufferedImageArray[index];
            var newWidth:int = (bufferedImage.getWidth() * percent / 100);
            var newHeight:int = (bufferedImage.getHeight() * percent / 100);
            scaledBufferedImageArray[index] = this.createBufferedImage(bufferedImage, newWidth, newHeight, scale);
        }
        return scaledBufferedImageArray;
    }
    

    public function createBufferedImage2(bufferedImageArray:Vector.<BufferedImage>, percent:Number, scale:Boolean):Vector.<BufferedImage> {
        var size:int = bufferedImageArray.length;
        var scaledBufferedImageArray:Vector.<BufferedImage> = new Vector.<BufferedImage>(size);
        var bufferedImage:BufferedImage = null;
        for (var index:int = 0; index < size; index++) {
            bufferedImage = bufferedImageArray[index];
            var newWidth:int = (bufferedImage.getWidth() * percent);
            var newHeight:int = (bufferedImage.getHeight() * percent);
            scaledBufferedImageArray[index] = this.createBufferedImage(bufferedImage, newWidth, newHeight, scale);
        }
        return scaledBufferedImageArray;
    }
    

    public function createBufferedImage3(bufferedImageArray:Vector.<BufferedImage>, width:int, height:int, scale:Boolean):Vector.<BufferedImage> {
        var size:int = bufferedImageArray.length;
        var scaledBufferedImageArray:Vector.<BufferedImage> = new Vector.<BufferedImage>(size);
        for (var index:int = 0; index < size; index++) {
            scaledBufferedImageArray[index] = this.createBufferedImage(bufferedImageArray[index], width, height, scale);
        }
        return scaledBufferedImageArray;
    }
    

    public function createBufferedImageForSave(bufferedImage:BufferedImage, newWidth:int, newHeight:int):BufferedImage {
        return this.createBufferedImage(bufferedImage, newWidth, newHeight, true);
    }
    

    public function createBufferedImage(bufferedImage:BufferedImage, newWidth:int, newHeight:int, scale:Boolean):BufferedImage {
        return this.createBufferedImageAllowTranslate(bufferedImage, newWidth, newHeight, scale, false);
    }
    

    public function createBufferedImageAllowTranslate(bufferedImage:BufferedImage, newWidth:int, newHeight:int, scale:Boolean, allowTranslate:Boolean):BufferedImage {
        var width:Number = bufferedImage.getWidth();
        var height:Number = bufferedImage.getHeight();
        var d_newWidth:Number = Number(newWidth);
        var d_newHeight:Number = Number(newHeight);
        var widthRatio:Number = d_newWidth / width;
        var heightRatio:Number = d_newHeight / height;
        var ratioX:Number = 1.0;
        var ratioY:Number = 1.0;
        if (scale) {
            ratioX = widthRatio;
            ratioY = heightRatio;
        }
        var affineTransform:AffineTransform = AffineTransform.getScaleInstance(ratioX, ratioY);
        if (!scale && allowTranslate) {
            var dx:Number = (Number(newWidth) - width) / 2.0;
            var dy:Number = (Number(newHeight) - height) / 2.0;
            affineTransform.translate(dx, dy);
        }
        var newBufferedImage:BufferedImage = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_ARGB_PRE);
        var graphics:Graphics2D = newBufferedImage.createGraphics();
        graphics.drawRenderedImage(bufferedImage, affineTransform);
        return newBufferedImage;
    }
    

    public function createBufferedImageWithLargerCanvas(bufferedImage:BufferedImage, newWidth:int, newHeight:int):BufferedImage {
        var width:Number = bufferedImage.getWidth();
        var height:Number = bufferedImage.getHeight();
        var d_newWidth:Number = Number(newWidth);
        var d_newHeight:Number = Number(newHeight);
        var widthRatio:Number = d_newWidth / width;
        var heightRatio:Number = d_newHeight / height;
        var dx2:int = JMath.toInt32((Number(newWidth) - width));
        var dy2:int = JMath.toInt32((Number(newHeight) - height));
        var dx:int = int(dx2 / 2);
        var dy:int = int(dy2 / 2);
        var dx4:int = int(dx2 / 4);
        var dy4:int = int(dy2 / 4);
        var newBufferedImage:BufferedImage = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_ARGB_PRE);
        var graphics:Graphics2D = newBufferedImage.createGraphics();
        graphics.drawImage(bufferedImage, dx4, dy4, null);
        return newBufferedImage;
    }
    

    public function convertToBufferedImage(toolkitImage:Image):BufferedImage {
        if (toolkitImage == null) {
            return null;
        }
        var bufferedImage:BufferedImage = new BufferedImage(toolkitImage.getWidth(null), toolkitImage.getHeight(null), BufferedImage.TYPE_INT_ARGB);
        var g2d:Graphics2D = bufferedImage.createGraphics();
        g2d.drawImage(toolkitImage, 0, 0, null);
        g2d.dispose();
        return bufferedImage;
    }
    

    public function getBufferedImage(image:Image):BufferedImage {
        var bufferedImage:BufferedImage = null;
        if (image.isMutable()) {
            j2seImage = (image as J2SEMutableImage);
            bufferedImage = (j2seImage.getImage() as BufferedImage);
        } else {
            var j2seImage:J2SEImmutableImage = (image as J2SEImmutableImage);
            bufferedImage = (j2seImage.getImage() as BufferedImage);
        }
        return bufferedImage;
    }
    

    public function toString1(bufferedImage:BufferedImage):String {
        var commonLabels:CommonLabels = CommonLabels.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(" BufferedImage -");
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(bufferedImage.getWidth());
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(bufferedImage.getHeight());
        stringBuffer.append(" Type: ");
        stringBuffer.appendint(bufferedImage.getType());
        return stringBuffer.toString();
    }
    }
}

