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

    public class Anchor {
    private static var TOP_LEFT_value:int;
    private static var TOP_LEFT_set:Boolean = false;
    public static function get TOP_LEFT():int {
        if (!Anchor.TOP_LEFT_set) {
            Anchor.TOP_LEFT_set = true;
            Anchor.TOP_LEFT_value = Graphics.TOP & Graphics.LEFT;
        }
        return Anchor.TOP_LEFT_value;
    }
    }
}

