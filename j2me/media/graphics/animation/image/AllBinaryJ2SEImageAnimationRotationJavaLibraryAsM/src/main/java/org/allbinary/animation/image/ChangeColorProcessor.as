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
package org.allbinary.animation.image {
    import javax.microedition.lcdui.Image;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.media.image.ImageModifierUtil;

    public class ChangeColorProcessor extends ModifierBaseProcessor {
    private static var instanceC_value:ChangeColorProcessor;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():ChangeColorProcessor {
        if (!ChangeColorProcessor.instanceC_set) {
            ChangeColorProcessor.instanceC_set = true;
            ChangeColorProcessor.instanceC_value = new ChangeColorProcessor();
        }
        return ChangeColorProcessor.instanceC_value;
    }
    

    public static function getInstance():ChangeColorProcessor {
        return ChangeColorProcessor.instanceC;
    }
    

    override public function updateColor(imageModifierUtil:ImageModifierUtil, originalImage:Image, imageToShow:Image, index:int, basicColor:BasicColor):void {
        imageModifierUtil.changeColor(originalImage, imageToShow, index, basicColor);
    }
    }
}

