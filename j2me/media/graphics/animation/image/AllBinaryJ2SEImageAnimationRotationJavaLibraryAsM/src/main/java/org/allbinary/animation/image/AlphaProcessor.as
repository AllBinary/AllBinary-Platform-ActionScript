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
    import org.allbinary.media.image.ImageModifierUtil;

    public class AlphaProcessor extends ModifierBaseProcessor {
    private static var instanceC_value:AlphaProcessor;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():AlphaProcessor {
        if (!AlphaProcessor.instanceC_set) {
            AlphaProcessor.instanceC_set = true;
            AlphaProcessor.instanceC_value = new AlphaProcessor();
        }
        return AlphaProcessor.instanceC_value;
    }
    

    override public static function getInstance():AlphaProcessor {
        return AlphaProcessor.instanceC;
    }
    

    override public function updateAlpha(imageModifierUtil:ImageModifierUtil, originalImage:Image, imageToShow:Image, index:int, alpha:int):void {
        imageModifierUtil.setAlpha(originalImage, imageToShow, index, alpha);
    }
    }
}

