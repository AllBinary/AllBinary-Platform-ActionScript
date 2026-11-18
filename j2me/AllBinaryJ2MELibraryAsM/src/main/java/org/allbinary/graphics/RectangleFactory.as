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
package org.allbinary.graphics {

    public class RectangleFactory {
    private static var SINGLETON_value:Rectangle;
    private static var SINGLETON_set:Boolean = false;
    public static function get SINGLETON():Rectangle {
        if (!RectangleFactory.SINGLETON_set) {
            RectangleFactory.SINGLETON_set = true;
            RectangleFactory.SINGLETON_value = new Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0);
        }
        return RectangleFactory.SINGLETON_value;
    }
    private static var ARRAY_OF_ARRAYS_value:Vector.<Vector.<Rectangle>>;
    private static var ARRAY_OF_ARRAYS_set:Boolean = false;
    public static function get ARRAY_OF_ARRAYS():Vector.<Vector.<Rectangle>> {
        if (!RectangleFactory.ARRAY_OF_ARRAYS_set) {
            RectangleFactory.ARRAY_OF_ARRAYS_set = true;
            RectangleFactory.ARRAY_OF_ARRAYS_value = (function():Vector.<Vector.<Rectangle>> { var array:Vector.<Vector.<Rectangle>> = new Vector.<Vector.<Rectangle>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<Rectangle>(0); } return array; })();
        }
        return RectangleFactory.ARRAY_OF_ARRAYS_value;
    }
    }
}

