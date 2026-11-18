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
package org.allbinary.image.opengles {
    import org.allbinary.platform.graphics.PlatformBitmapBase;
    import org.allbinary.platform.graphics.PlatformBitmapBaseFactory;
    import org.allbinary.platform.opengles.PlatformTextureBaseFactory;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    //OpenGLESNullImageJ2MEJavaLibrary
    public class OpenGLESImage implements OpenGLSurfaceChangedInterface {
    private static var NULL_OPENGL_IMAGE_value:OpenGLESImage;
    private static var NULL_OPENGL_IMAGE_set:Boolean = false;
    public static function get NULL_OPENGL_IMAGE():OpenGLESImage {
        if (!OpenGLESImage.NULL_OPENGL_IMAGE_set) {
            OpenGLESImage.NULL_OPENGL_IMAGE_set = true;
            OpenGLESImage.NULL_OPENGL_IMAGE_value = new OpenGLESImage(NullImage.NULL_IMAGE, PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
        }
        return OpenGLESImage.NULL_OPENGL_IMAGE_value;
    }
    private static var texture2dList_value:BasicArrayList;
    private static var texture2dList_set:Boolean = false;
    public static function get texture2dList():BasicArrayList {
        if (!OpenGLESImage.texture2dList_set) {
            OpenGLESImage.texture2dList_set = true;
            OpenGLESImage.texture2dList_value = new BasicArrayListD();
        }
        return OpenGLESImage.texture2dList_value;
    }
    public static const TYPE:int = 4;
        public var commonStrings:CommonStrings = null;
        public var textureFactory:PlatformTextureBaseFactory = null;
        public var openGLBitmap:PlatformBitmapBase = null;
        public var openGLESImageProperties:OpenGLESImageProperties = null;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLESImage():void {
    this.commonStrings = CommonStrings.getInstance();
    
    
    this.openGLESImageProperties = new OpenGLESImageProperties();
        }
    

    public function OpenGLESImage(image:Image, bitmapFactory:PlatformBitmapBaseFactory, textureFactory:PlatformTextureBaseFactory) {
        super();
        this.initFieldsOpenGLESImage();
        this.openGLBitmap = bitmapFactory.createBitmap(image);
        this.textureFactory = textureFactory;
    }
    

    public function set_(gl:GL):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function initTexture(gl:GL10):Boolean {
        return false;
    }
    

    public function drawRegion(gl:GL10, viewHeight:int, x_src:Number, y_src:Number, width:Number, height:Number, x:int, y:int, z:int):void {
    }
    

    public function draw(gl:GL10, x:int, y:int, z:int):void {
    }
    

    public function getType():int {
        return OpenGLESImage.TYPE;
    }
    }
}

