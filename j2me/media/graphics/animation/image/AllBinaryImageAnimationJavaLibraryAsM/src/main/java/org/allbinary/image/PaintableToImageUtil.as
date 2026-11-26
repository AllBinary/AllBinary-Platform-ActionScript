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
    import org.allbinary.graphics.paint.PaintableInterface;

    public class PaintableToImageUtil {
    private static var instance_value:PaintableToImageUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():PaintableToImageUtil {
        if (!PaintableToImageUtil.instance_set) {
            PaintableToImageUtil.instance_set = true;
            PaintableToImageUtil.instance_value = new PaintableToImageUtil();
        }
        return PaintableToImageUtil.instance_value;
    }
    

    public static function getImage(paintableInterface:PaintableInterface, width:int, height:int):Image {
        var image:Image = GameFeatureImageCacheFactory.getInstance().get_(JSystem.className(PaintableToImageUtil.instance), width, height);
        var graphics:Graphics = image.getGraphics();
        paintableInterface.paint(graphics);
        return image;
    }
    }
}

