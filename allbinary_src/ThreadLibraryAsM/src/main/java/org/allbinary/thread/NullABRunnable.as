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

    public class NullABRunnable extends ABRunnable {
    private static var instance_value:NullABRunnable;
    private static var instance_set:Boolean = false;
    private static function get instance():NullABRunnable {
        if (!NullABRunnable.instance_set) {
            NullABRunnable.instance_set = true;
            NullABRunnable.instance_value = new NullABRunnable();
        }
        return NullABRunnable.instance_value;
    }
    

    public static function getInstance():NullABRunnable {
        return NullABRunnable.instance;
    }
    

    override public function isRunning():Boolean {
        return false;
    }
    }
}

