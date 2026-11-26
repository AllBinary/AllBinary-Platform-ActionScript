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
package org.allbinary.image {
    import javax.microedition.lcdui.Image;
    import org.allbinary.animation.IndexedAnimation;

    public class IndexedAnimationToImageArrayUtil {
    

    public static function getInstance3(width:int, height:int, sequentialAnimationInterface:IndexedAnimation):Vector.<Image> {
        var size:int = sequentialAnimationInterface.getAnimationSize();
        var imageArray:Vector.<Image> = new Vector.<Image>(size);
        for (var index:int = 0; index < size; index++) {
            sequentialAnimationInterface.setFrame(index);
            imageArray[index] = AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface);
        }
        return imageArray;
    }
    }
}

