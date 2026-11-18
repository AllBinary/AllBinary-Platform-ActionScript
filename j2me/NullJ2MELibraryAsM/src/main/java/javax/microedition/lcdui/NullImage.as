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
package javax.microedition.lcdui {

    public class NullImage {
    private static var NULL_IMAGE_ARRAY_value:Vector.<Image>;
    private static var NULL_IMAGE_ARRAY_set:Boolean = false;
    public static function get NULL_IMAGE_ARRAY():Vector.<Image> {
        if (!NullImage.NULL_IMAGE_ARRAY_set) {
            NullImage.NULL_IMAGE_ARRAY_set = true;
            NullImage.NULL_IMAGE_ARRAY_value = new Vector.<Image>(0);
        }
        return NullImage.NULL_IMAGE_ARRAY_value;
    }
    private static var NULL_IMAGE_value:Image;
    private static var NULL_IMAGE_set:Boolean = false;
    public static function get NULL_IMAGE():Image {
        if (!NullImage.NULL_IMAGE_set) {
            NullImage.NULL_IMAGE_set = true;
            NullImage.NULL_IMAGE_value = new Image();
        }
        return NullImage.NULL_IMAGE_value;
    }
    }
}

