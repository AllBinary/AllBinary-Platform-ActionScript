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
package org.allbinary.logic.io {
    import java.io.JCloseable;
    import java.io.JIOException;

    public class NullCloseable implements JCloseable {
    private static var NULL_CLOSEABLE_value:NullCloseable;
    private static var NULL_CLOSEABLE_set:Boolean = false;
    public static function get NULL_CLOSEABLE():NullCloseable {
        if (!NullCloseable.NULL_CLOSEABLE_set) {
            NullCloseable.NULL_CLOSEABLE_set = true;
            NullCloseable.NULL_CLOSEABLE_value = new NullCloseable();
        }
        return NullCloseable.NULL_CLOSEABLE_value;
    }
    

    public function close():void {
    }
    }
}

