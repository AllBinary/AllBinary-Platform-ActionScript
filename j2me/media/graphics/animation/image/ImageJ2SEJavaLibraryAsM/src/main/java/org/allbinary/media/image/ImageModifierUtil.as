/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
    import java.awt.image.JColorModel;
    import java.awt.image.JWritableRaster;
    import javax.microedition.lcdui.Image;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;

    public class ImageModifierUtil {
    private static var instance_value:ImageModifierUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageModifierUtil {
        if (!ImageModifierUtil.instance_set) {
            ImageModifierUtil.instance_set = true;
            ImageModifierUtil.instance_value = new ImageModifierUtil();
        }
        return ImageModifierUtil.instance_value;
    }
        private var imageUtil:ImageUtil = null;
        private var colorArray:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageModifierUtil():void {
    this.imageUtil = ImageUtil.getInstance();
    this.colorArray = new Vector.<int>(1);
        }

        public function ImageModifierUtil() {
            super();
            this.initFieldsImageModifierUtil();
        }
    

    public static function getInstanceOrCreate():ImageModifierUtil {
        return ImageModifierUtil.instance;
    }
    

    public function setBasicColorP(basicColor:BasicColor):void {
    }
    

    public function setColor(unusedOriginalImage:Image, image:Image, imageIndex:int, basicColor:BasicColor):void {
        var newBufferedImage:JBufferedImage = this.imageUtil.getBufferedImage(image);
        var r:int = basicColor.red;
        var g:int = basicColor.green;
        var b:int = basicColor.blue;
        var width:int = image.getWidth();
        var height:int = image.getHeight();
        var colorModel:JColorModel = null;
        var dataElements:Object = null;
        var ax:int = 0;
        var rx:int = 0;
        var gx:int = 0;
        var bx:int = 0;
        for (var index:int = 0; index < width; index++) {
            for (var index2:int = 0; index2 < height; index2++) {
                colorModel = newBufferedImage.getColorModel();
                dataElements = newBufferedImage.getRaster().getDataElements(index, index2, null);
                ax = colorModel.getAlpha(dataElements);
                rx = colorModel.getRed(dataElements);
                gx = colorModel.getGreen(dataElements);
                bx = colorModel.getBlue(dataElements);
                if (rx != 0 || gx != 0 || bx != 0) {
                    newBufferedImage.setRGB(index, index2, (ax << 24) | (r << 16) | (g << 8) | (b));
                }
            }
        }
    }
    

    public function changeColor(unusedOriginalImage:Image, image:Image, imageIndex:int, basicColor:BasicColor):void {
        var newBufferedImage:JBufferedImage = this.imageUtil.getBufferedImage(image);
        var MAX:Number = 255.0;
        var r:Number = (Number(basicColor.red)) / MAX;
        var g:Number = (Number(basicColor.green)) / MAX;
        var b:Number = (Number(basicColor.blue)) / MAX;
        var width:int = image.getWidth();
        var height:int = image.getHeight();
        var colorModel:JColorModel = null;
        var dataElements:Object = null;
        var ax:int = 0;
        var rx:int = 0;
        var gx:int = 0;
        var bx:int = 0;
        for (var index:int = 0; index < width; index++) {
            for (var index2:int = 0; index2 < height; index2++) {
                colorModel = newBufferedImage.getColorModel();
                dataElements = newBufferedImage.getRaster().getDataElements(index, index2, null);
                ax = colorModel.getAlpha(dataElements);
                rx = colorModel.getRed(dataElements);
                gx = colorModel.getGreen(dataElements);
                bx = colorModel.getBlue(dataElements);
                rx = JMath.toInt32(rx * r);
                gx = JMath.toInt32(gx * g);
                bx = JMath.toInt32(bx * b);
                newBufferedImage.setRGB(index, index2, (ax << 24) | (rx << 16) | (gx << 8) | (bx));
            }
        }
    }
    

    public function setAlpha(unusedOriginalImage:Image, image:Image, imageIndex:int, alphaInt:int):void {
        var alpha:int = ((int(alphaInt) << 24) >> 24);
        var newBufferedImage:JBufferedImage = this.imageUtil.getBufferedImage(image);
        var width:int = image.getWidth();
        var height:int = image.getHeight();
        var raster:JWritableRaster = newBufferedImage.getAlphaRaster();
        for (var index:int = 0; index < width; index++) {
            for (var index2:int = 0; index2 < height; index2++) {
                raster.getPixel(index, index2, this.colorArray);
                this.colorArray[0] = alpha & this.colorArray[0];
                raster.setPixel(index, index2, this.colorArray);
            }
        }
    }
    

    public function getImageArray(originalImageArray:Vector.<Image>):Vector.<Image> {
        try {
            var newImageArray:Vector.<Image> = new Vector.<Image>(originalImageArray.length);
            var size:int = newImageArray.length;
            var originalImage:Image = null;
            for (var index:int = 0; index < size; index++) {
                originalImage = originalImageArray[index];
                var image:Image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight());
                image.getGraphics().drawImage(originalImage, 0, 0, Anchor.TOP_LEFT);
                newImageArray[index] = image;
            }
            return newImageArray;
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "getImageArray", e);
            return originalImageArray;
        }
    }
    

    public function handleImage(imageArray:Vector.<Image>, index:int, image:Image):void {
    }
    

    public function reset():void {
    }
    }
}

