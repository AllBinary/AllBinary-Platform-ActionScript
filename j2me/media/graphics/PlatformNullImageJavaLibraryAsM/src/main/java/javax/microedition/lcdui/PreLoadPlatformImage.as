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
    public class PreLoadPlatformImage extends PlatformImage {
    private static var instance_value:PreLoadPlatformImage;
    private static var instance_set:Boolean = false;
    private static function get instance():PreLoadPlatformImage {
        if (!PreLoadPlatformImage.instance_set) {
            PreLoadPlatformImage.instance_set = true;
            PreLoadPlatformImage.instance_value = new PreLoadPlatformImage();
        }
        return PreLoadPlatformImage.instance_value;
    }
    

    public static function getInstance():PreLoadPlatformImage {
        return PreLoadPlatformImage.instance;
    }
    }
}

