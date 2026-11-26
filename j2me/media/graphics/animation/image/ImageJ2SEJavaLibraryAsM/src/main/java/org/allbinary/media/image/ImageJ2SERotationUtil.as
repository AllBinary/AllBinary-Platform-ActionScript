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
    import java.awt.JImage;
    import java.awt.image.JBufferedImage;

    public class ImageJ2SERotationUtil {
    private static var instance_value:ImageJ2SERotationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageJ2SERotationUtil {
        if (!ImageJ2SERotationUtil.instance_set) {
            ImageJ2SERotationUtil.instance_set = true;
            ImageJ2SERotationUtil.instance_value = new ImageJ2SERotationUtil();
        }
        return ImageJ2SERotationUtil.instance_value;
    }
        private var imageUtil:ImageUtil = null;
        private var imageJ2SEUtil:ImageJ2SEUtil = null;
        private var TWO_PIE:Number = 0.0;

        // Java field initializers run after the base constructor
        private function initFieldsImageJ2SERotationUtil():void {
    this.imageUtil = ImageUtil.getInstance();
    this.imageJ2SEUtil = ImageJ2SEUtil.getInstance();
    this.TWO_PIE = 2 * Math.PI;
        }
    

    public static function getInstance():ImageJ2SERotationUtil {
        return ImageJ2SERotationUtil.instance;
    }
    

    public function ImageJ2SERotationUtil() {
        super();
        this.initFieldsImageJ2SERotationUtil();
    }
    

    public function getRotatedImage(bufferedImage:JImage, totalAngle:int):JBufferedImage {
        return this.getRotatedImageRadians(bufferedImage, this.TWO_PIE * Number(totalAngle) / 360.0);
    }
    

    public function getRotatedImageRadians(bufferedImage:JImage, radians:Number):JBufferedImage {
        var newBufferedImage:JBufferedImage = this.imageUtil.create(bufferedImage.getWidth(null), bufferedImage.getHeight(null));
        return this.drawRotatedImageRadians(bufferedImage, newBufferedImage, newBufferedImage.createGraphics(), radians);
    }
    

    private function drawRotatedImageRadians(bufferedImage:JImage, newBufferedImage:JBufferedImage, g:JGraphics2D, radians:Number):JBufferedImage {
        g.rotate(radians, newBufferedImage.getWidth(null) / 2, newBufferedImage.getHeight(null) / 2);
        g.drawImage(bufferedImage, 0, 0, bufferedImage.getWidth(null), bufferedImage.getHeight(null), null);
        g.dispose();
        return newBufferedImage;
    }
    

    public function rotateImage(bufferedImage:JImage, newBufferedImage:JBufferedImage, totalAngle:int):JBufferedImage {
        var g:JGraphics2D = newBufferedImage.createGraphics();
        g.setBackground(this.imageJ2SEUtil.TRANSPARENT_COLOR);
        g.clearRect(0, 0, newBufferedImage.getWidth(), newBufferedImage.getHeight());
        return this.drawRotatedImageRadians(bufferedImage, newBufferedImage, g, this.TWO_PIE * Number(totalAngle) / 360.0);
    }
    

    public function createRotatedImage(bufferedImage:JImage, newBufferedImage:JBufferedImage, totalAngle:int):JBufferedImage {
        var g:JGraphics2D = newBufferedImage.createGraphics();
        return this.drawRotatedImageRadians(bufferedImage, newBufferedImage, g, this.TWO_PIE * Number(totalAngle) / 360.0);
    }
    

    public function getRotatedImages(bufferedImage:JImage, numberOfFrames:int, totalAngle:int):Vector.<JBufferedImage> {
        var bufferedImageArray:Vector.<JBufferedImage> = new Vector.<JBufferedImage>(numberOfFrames);
        var arc:Number = (this.TWO_PIE) * Number(totalAngle) / 360.0;
        var size:int = bufferedImageArray.length;
        for (var index:int = 0; index < size; index++) {
            var radians:Number = (arc / Number(size)) * Number(index);
            bufferedImageArray[index] = this.getRotatedImageRadians(bufferedImage, radians);
        }
        return bufferedImageArray;
    }
    

    public function createSpriteImage(bufferedImageArray:Vector.<JBufferedImage>):JBufferedImage {
        var columns:int = 9;
        var rows:int = 0;
        var size:int = bufferedImageArray.length;
        if (size < columns) {
            columns = size;
        }
        rows = (int(size / columns));
        if (size % columns != 0) {
            rows++;
        }
        var firstBufferedImage:JBufferedImage = bufferedImageArray[0];
        var bufferedImage:JBufferedImage = this.imageUtil.create(firstBufferedImage.getWidth(null) * columns, firstBufferedImage.getHeight(null) * rows);
        var g:JGraphics2D = bufferedImage.createGraphics();
        var columnIndex:int = 0;
        var rowIndex:int = 0;
        var nextBufferedImage:JBufferedImage = null;
        for (var index:int = 0; index < size; index++) {
            if (int(index / 9) != 0 && index % 9 == 0) {
                rowIndex++;
                columnIndex = 0;
            }
            nextBufferedImage = bufferedImageArray[index];
            g.drawImage(nextBufferedImage, nextBufferedImage.getWidth(null) * columnIndex, nextBufferedImage.getHeight(null) * rowIndex, nextBufferedImage.getWidth(null), nextBufferedImage.getHeight(null), null);
            columnIndex++;
        }
        g.dispose();
        return bufferedImage;
    }
    }
}

