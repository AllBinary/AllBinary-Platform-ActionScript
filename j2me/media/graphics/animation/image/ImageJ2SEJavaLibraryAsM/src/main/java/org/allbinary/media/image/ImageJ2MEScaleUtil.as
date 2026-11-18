/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2023 AllBinary
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

    public class ImageJ2MEScaleUtil {
    private static var instance_value:ImageJ2MEScaleUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageJ2MEScaleUtil {
        if (!ImageJ2MEScaleUtil.instance_set) {
            ImageJ2MEScaleUtil.instance_set = true;
            ImageJ2MEScaleUtil.instance_value = new ImageJ2MEScaleUtil();
        }
        return ImageJ2MEScaleUtil.instance_value;
    }
    

    public static function getInstance():ImageJ2MEScaleUtil {
        return ImageJ2MEScaleUtil.instance;
    }
    

    public function ImageJ2MEScaleUtil() {
        super();
    }
    

    public function scaleArray(images:Vector.<Image>, width:int, height:int):Vector.<Image> {
        var scaledImages:Vector.<Image> = new Vector.<Image>(images.length);
        for (var index:int = images.length; --index >= 0; ) {
            scaledImages[index] = this.scale(images[index], width, height);
        }
        return scaledImages;
    }
    

    public function scale(image:Image, width:int, height:int):Image {
        var sourceWidth:int = image.getWidth();
        var sourceHeight:int = image.getHeight();
        var originalData:Vector.<int> = new Vector.<int>(image.getWidth() * image.getHeight());
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight());
        var scaledData:Vector.<int> = new Vector.<int>(int(width * height));
        var heightRatioFactor:int = int((int(8 * sourceHeight)) / height);
        var widthRatioFactor:int = int((int(8 * sourceWidth)) / width);
        var scaledIndex:int = int(scaledData.length - 1);
        var dx:int = 0;
        var dy:int = 0;
        for (var index:int = height; --index >= 0; ) {
            dy = (int(index * heightRatioFactor)) >> 3;
            for (var index2:int = width; --index2 >= 0; ) {
                dx = (int(index2 * widthRatioFactor)) >> 3;
                scaledData[scaledIndex--] = originalData[int((int(sourceWidth * dy)) + dx)];
            }
        }
        var scaledImage:Image = Image.createRGBImage(scaledData, width, height, true);
        return scaledImage;
    }
    }
}

