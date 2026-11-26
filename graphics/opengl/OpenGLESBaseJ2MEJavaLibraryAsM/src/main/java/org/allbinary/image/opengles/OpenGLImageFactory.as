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
    import javax.microedition.lcdui.Image;
    import org.allbinary.platform.graphics.PlatformBitmapBaseFactory;
    import org.allbinary.platform.opengles.PlatformTextureBaseFactory;

    public class OpenGLImageFactory {
    private static var NULL_OPENGL_IMAGE_FACTORY_value:OpenGLImageFactory;
    private static var NULL_OPENGL_IMAGE_FACTORY_set:Boolean = false;
    public static function get NULL_OPENGL_IMAGE_FACTORY():OpenGLImageFactory {
        if (!OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY_set) {
            OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY_set = true;
            OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY_value = new OpenGLImageFactory();
        }
        return OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY_value;
    }
    

    public function getInstance3(image:Image, bitmapFactory:PlatformBitmapBaseFactory, textureFactory:PlatformTextureBaseFactory):Image {
        throw new JException("RuntimeException", "");
    }
    }
}

