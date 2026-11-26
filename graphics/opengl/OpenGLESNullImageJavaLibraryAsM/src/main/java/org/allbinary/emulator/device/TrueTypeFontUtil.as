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
package org.allbinary.emulator.device {
    import javax.microedition.khronos.opengles.GL10;
    import javax.microedition.lcdui.Image;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.image.opengles.OpenGLESImage;

    public class TrueTypeFontUtil extends TrueTypeFontUtilBase {
    private static var instance_value:TrueTypeFontUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():TrueTypeFontUtil {
        if (!TrueTypeFontUtil.instance_set) {
            TrueTypeFontUtil.instance_set = true;
            TrueTypeFontUtil.instance_value = new TrueTypeFontUtil();
        }
        return TrueTypeFontUtil.instance_value;
    }
        public var fontImage:OpenGLESImage = null;

        // Java field initializers run after the base constructor
        private function initFieldsTrueTypeFontUtil():void {
    this.fontImage = OpenGLESImage.NULL_OPENGL_IMAGE;
        }
    

    public static function getInstance():TrueTypeFontUtil {
        return TrueTypeFontUtil.instance;
    }
    

    public function TrueTypeFontUtil() {
        super(1);
        this.initFieldsTrueTypeFontUtil();
    }
    

    override public function getAsTextureSize(textureSize:int):int {
        throw new JException("RuntimeException", "");
    }
    

    override public function getCellSize(cellSize:int):int {
        throw new JException("RuntimeException", "");
    }
    

    public function getFontBitmap(filename:String, fontSize:int, cellSize:int, basicColor:BasicColor):Image {
        throw new JException("RuntimeException", "");
    }
    

    public function saveFontAtlasAsFile():void {
    }
    

    public function getFontBitmapGL(gl:GL10, filename:String, cellSize:int, basicColor:BasicColor):Image {
        throw new JException("RuntimeException", "");
    }
    

    public function getFontWidths(filename:String, fontSize:int):Vector.<int> {
        throw new JException("RuntimeException", "");
    }
    }
}

