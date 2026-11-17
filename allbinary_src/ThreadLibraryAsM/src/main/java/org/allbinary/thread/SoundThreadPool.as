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
package org.allbinary.thread {

    public class SoundThreadPool {
    private static var instance_value:ThreadPool;
    private static var instance_set:Boolean = false;
    private static function get instance():ThreadPool {
        if (!SoundThreadPool.instance_set) {
            SoundThreadPool.instance_set = true;
            SoundThreadPool.instance_value = new ThreadPool("Sound", 1, ThreadPool.NORMAL_PRIORITY);
        }
        return SoundThreadPool.instance_value;
    }
    

    public static function getInstance():ThreadPool {
        return SoundThreadPool.instance;
    }
    }
}

