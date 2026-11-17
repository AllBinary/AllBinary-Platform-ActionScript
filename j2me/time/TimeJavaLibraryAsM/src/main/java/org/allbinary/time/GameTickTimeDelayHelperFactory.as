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

    public class GameTickTimeDelayHelperFactory {
    private static var instance_value:GameTickTimeDelayHelper;
    private static var instance_set:Boolean = false;
    private static function get instance():GameTickTimeDelayHelper {
        if (!GameTickTimeDelayHelperFactory.instance_set) {
            GameTickTimeDelayHelperFactory.instance_set = true;
            GameTickTimeDelayHelperFactory.instance_value = new GameTickTimeDelayHelper(-1);
        }
        return GameTickTimeDelayHelperFactory.instance_value;
    }
    

    public static function getInstance():GameTickTimeDelayHelper {
        return GameTickTimeDelayHelperFactory.instance;
    }
    

    public function GameTickTimeDelayHelperFactory() {
        super();
    }
    }
}

