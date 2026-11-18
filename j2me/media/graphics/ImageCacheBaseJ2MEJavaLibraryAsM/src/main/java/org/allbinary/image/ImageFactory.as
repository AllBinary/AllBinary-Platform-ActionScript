/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
    import java.io.JInputStream;
    import org.allbinary.MIDPUtil;

    //ImageCacheBaseJavaLibrary - J2ME
    public class ImageFactory {
    private static var instance_value:ImageFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageFactory {
        if (!ImageFactory.instance_set) {
            ImageFactory.instance_set = true;
            ImageFactory.instance_value = new ImageFactory();
        }
        return ImageFactory.instance_value;
    }
    

    public static function getInstance():ImageFactory {
        return ImageFactory.instance;
    }
    

    public function createImageUrl(url:String):Image {
        return Image.createImage(url);
    }
    

    public function createImage(caller:String, width:int, height:int):Image {
        return MIDPUtil.getInstance().createImageWH(width, height);
    }
    

    public function createImageFromInputStream(key:Object, inputStream:InputStream):Image {
        var image:Image = MIDPUtil.getInstance().createImageFromInputStream(inputStream);
        return image;
    }
    

    public function createImageFromInputStream(inputStream:InputStream):Image {
        return MIDPUtil.getInstance().createImageFromInputStream(inputStream);
    }
    }
}

