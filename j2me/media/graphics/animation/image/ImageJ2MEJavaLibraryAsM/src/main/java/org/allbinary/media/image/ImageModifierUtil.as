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
    import org.allbinary.graphics.color.BasicColor;

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
    

    public static function getInstanceOrCreate():ImageModifierUtil {
        return ImageModifierUtil.instance;
    }
    

    public function setColor(unusedOriginalImage:Image, image:Image, imageIndex:int, basicColor:BasicColor):void {
    }
    

    public function changeColor(unusedOriginalImage:Image, image:Image, imageIndex:int, basicColor:BasicColor):void {
    }
    

    public function setAlpha(originalImage:Image, image:Image, imageIndex:int, alphaInt:int):void {
    }
    

    public function getImageArray(originalImageArray:Vector.<Image>):Vector.<Image> {
        return originalImageArray;
    }
    

    public function handleImage(imageArray:Vector.<Image>, index:int, image:Image):void {
    }
    

    public function reset():void {
    }
    }
}

