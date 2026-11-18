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
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.media.image.ImageModifierUtil;

    public class SetColorProcessor extends ModifierBaseProcessor {
    private static var instanceC_value:SetColorProcessor;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():SetColorProcessor {
        if (!SetColorProcessor.instanceC_set) {
            SetColorProcessor.instanceC_set = true;
            SetColorProcessor.instanceC_value = new SetColorProcessor();
        }
        return SetColorProcessor.instanceC_value;
    }
    

    override public static function getInstance():SetColorProcessor {
        return SetColorProcessor.instanceC;
    }
    

    override public function updateColor(imageModifierUtil:ImageModifierUtil, originalImage:Image, imageToShow:Image, index:int, basicColor:BasicColor):void {
        imageModifierUtil.setColor(originalImage, imageToShow, index, basicColor);
    }
    }
}

