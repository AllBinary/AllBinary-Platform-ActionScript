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

    public class ModifierBaseProcessor {
    private static var instance_value:ModifierBaseProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():ModifierBaseProcessor {
        if (!ModifierBaseProcessor.instance_set) {
            ModifierBaseProcessor.instance_set = true;
            ModifierBaseProcessor.instance_value = new ModifierBaseProcessor();
        }
        return ModifierBaseProcessor.instance_value;
    }
    

    public static function getInstance():ModifierBaseProcessor {
        return ModifierBaseProcessor.instance;
    }
    

    public function updateColor(imageModifierUtil:ImageModifierUtil, originalImage:Image, imageToShow:Image, index:int, basicColor:BasicColor):void {
    }
    

    public function updateAlpha(imageModifierUtil:ImageModifierUtil, originalImage:Image, imageToShow:Image, index:int, alpha:int):void {
    }
    }
}

