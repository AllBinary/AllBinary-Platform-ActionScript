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
package org.allbinary.thread {
    import java.lang.JThread;

    public class NullThread {
    private static var NULL_THREAD_value:JThread;
    private static var NULL_THREAD_set:Boolean = false;
    public static function get NULL_THREAD():JThread {
        if (!NullThread.NULL_THREAD_set) {
            NullThread.NULL_THREAD_set = true;
            NullThread.NULL_THREAD_value = new JThread();
        }
        return NullThread.NULL_THREAD_value;
    }
    }
}

