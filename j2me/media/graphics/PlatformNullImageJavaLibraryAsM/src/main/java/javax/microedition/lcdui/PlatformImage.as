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
package javax.microedition.lcdui {
    import org.allbinary.logic.NullUtil;

    //PlatformNullImageJavaLibrary
    public class PlatformImage {
    

    public function getImage(graphicsSurface2:Object):Object {
        return NullImage.NULL_IMAGE;
    }
    

    public function getSurfaceWidth(graphicsSurface2:Object, width:int):int {
        return width;
    }
    

    public function getSurfaceHeight(graphicsSurface2:Object, height:int):int {
        return height;
    }
    

    public function getWidth(image:Image, width:int):int {
        return width;
    }
    

    public function getHeight(image:Image, height:int):int {
        return height;
    }
    

    public function getGraphics(graphicsSurface:Object, width:int, height:int, image:Image):Graphics {
        throw new JException("RuntimeException", "");
    }
    

    public function drawImage(image:Image, x:int, y:int, anchor:int, g2:Graphics, g:Object):void {
    }
    

    public function drawRegion(image:Image, x_src:int, y_src:int, width:int, height:int, transform:int, x_dst:int, y_dst:int, anchor:int, g:Graphics):void {
    }
    

    public function getRGB(argb:Vector.<int>, offset:int, scanlength:int, x:int, y:int, width:int, height:int, image:Image):void {
    }
    

    public function setRGB(argb:Vector.<int>, offset:int, scanlength:int, x:int, y:int, width:int, height:int, image:Image):void {
    }
    

    public function getData(image:Image):Vector.<int> {
        return NullUtil.getInstance().NULL_INT_ARRAY;
    }
    }
}

