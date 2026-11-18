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
package org.allbinary.game.displayable.canvas {

    public class NullWaitGameRunnable extends GameRunnable {
    private static var instance_value:GameRunnable;
    private static var instance_set:Boolean = false;
    private static function get instance():GameRunnable {
        if (!NullWaitGameRunnable.instance_set) {
            NullWaitGameRunnable.instance_set = true;
            NullWaitGameRunnable.instance_value = new NullWaitGameRunnable();
        }
        return NullWaitGameRunnable.instance_value;
    }
    

    public static function getInstance():GameRunnable {
        return NullWaitGameRunnable.instance;
    }
    }
}

