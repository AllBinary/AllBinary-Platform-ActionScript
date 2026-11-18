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
package org.allbinary.media.image {

    public class ImageCompleteUtil {
    private static var instance_value:ImageCompleteUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageCompleteUtil {
        if (!ImageCompleteUtil.instance_set) {
            ImageCompleteUtil.instance_set = true;
            ImageCompleteUtil.instance_value = new ImageCompleteUtil();
        }
        return ImageCompleteUtil.instance_value;
    }
    

    public static function getInstance():ImageCompleteUtil {
        return ImageCompleteUtil.instance;
    }
    

    public function waitForImage(image:Image, name:String):void {
    }
    }
}

