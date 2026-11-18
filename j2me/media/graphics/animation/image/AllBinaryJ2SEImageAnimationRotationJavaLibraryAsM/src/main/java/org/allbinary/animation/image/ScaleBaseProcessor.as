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

    public class ScaleBaseProcessor {
    private static var instance_value:ScaleBaseProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():ScaleBaseProcessor {
        if (!ScaleBaseProcessor.instance_set) {
            ScaleBaseProcessor.instance_set = true;
            ScaleBaseProcessor.instance_value = new ScaleBaseProcessor();
        }
        return ScaleBaseProcessor.instance_value;
    }
    

    public static function getInstance():ScaleBaseProcessor {
        return ScaleBaseProcessor.instance;
    }
    

    public function update(originalImage:Image, originalImageArray:Vector.<Image>, imageToShowArray:Vector.<Image>, index:int, scaleX:Number, scaleY:Number, maxScaleX:Number, maxScaleY:Number):void {
    }
    }
}

