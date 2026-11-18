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

    //PlatformNullImageJavaLibrary
    public class PostLoadPlatformImage extends PlatformImage {
    private static var instance_value:PostLoadPlatformImage;
    private static var instance_set:Boolean = false;
    private static function get instance():PostLoadPlatformImage {
        if (!PostLoadPlatformImage.instance_set) {
            PostLoadPlatformImage.instance_set = true;
            PostLoadPlatformImage.instance_value = new PostLoadPlatformImage();
        }
        return PostLoadPlatformImage.instance_value;
    }
    

    public static function getInstance():PostLoadPlatformImage {
        return PostLoadPlatformImage.instance;
    }
    }
}

