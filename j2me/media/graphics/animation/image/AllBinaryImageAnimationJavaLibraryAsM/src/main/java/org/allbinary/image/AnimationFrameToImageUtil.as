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
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.Image;
    import org.allbinary.animation.Animation;

    public class AnimationFrameToImageUtil {
    private static var instance_value:AnimationFrameToImageUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():AnimationFrameToImageUtil {
        if (!AnimationFrameToImageUtil.instance_set) {
            AnimationFrameToImageUtil.instance_set = true;
            AnimationFrameToImageUtil.instance_value = new AnimationFrameToImageUtil();
        }
        return AnimationFrameToImageUtil.instance_value;
    }
    

    public static function getInstance():AnimationFrameToImageUtil {
        return AnimationFrameToImageUtil.instance;
    }
    

    public function getInstanceTranslate(width:int, height:int, animationInterface:Animation):Image {
        var image:Image = GameFeatureImageCacheFactory.getInstance().get_(JSystem.className(AnimationFrameToImageUtil.instance), ((int(width * 3)) >> 1), ((int(height * 3)) >> 1));
        var graphics:Graphics = image.getGraphics();
        var tranlateX:int = (width >> 2);
        var tranlateY:int = (height >> 2);
        graphics.translate(tranlateX, tranlateY);
        animationInterface.paintXY(graphics, 0, 0);
        graphics.translate(-tranlateX, -tranlateY);
        return image;
    }
    

    public function getInstanceWH(width:int, height:int, animationInterface:Animation):Image {
        var image:Image = GameFeatureImageCacheFactory.getInstance().get_(JSystem.className(AnimationFrameToImageUtil.instance), width, height);
        var graphics:Graphics = image.getGraphics();
        animationInterface.paintXY(graphics, 0, 0);
        return image;
    }
    }
}

