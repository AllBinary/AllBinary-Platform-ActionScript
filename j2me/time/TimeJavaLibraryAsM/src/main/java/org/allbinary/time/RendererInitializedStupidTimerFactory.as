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
package org.allbinary.time {

    public class RendererInitializedStupidTimerFactory {
    private static var instance_value:StupidTimer;
    private static var instance_set:Boolean = false;
    private static function get instance():StupidTimer {
        if (!RendererInitializedStupidTimerFactory.instance_set) {
            RendererInitializedStupidTimerFactory.instance_set = true;
            RendererInitializedStupidTimerFactory.instance_value = new StupidTimer();
        }
        return RendererInitializedStupidTimerFactory.instance_value;
    }
    

    public static function getInstance():StupidTimer {
        return RendererInitializedStupidTimerFactory.instance;
    }
    }
}

