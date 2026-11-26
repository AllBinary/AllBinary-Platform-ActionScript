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
package org.allbinary.device {
    import javax.microedition.khronos.opengles.GL10;

    public class NullGL10 implements GL10 {
    private static var NULL_GL10_value:NullGL10;
    private static var NULL_GL10_set:Boolean = false;
    public static function get NULL_GL10():NullGL10 {
        if (!NullGL10.NULL_GL10_set) {
            NullGL10.NULL_GL10_set = true;
            NullGL10.NULL_GL10_value = new NullGL10();
        }
        return NullGL10.NULL_GL10_value;
    }
    }
}

