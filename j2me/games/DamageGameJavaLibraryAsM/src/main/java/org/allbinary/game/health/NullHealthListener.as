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
package org.allbinary.game.health {

    public class NullHealthListener implements HealthListenerInterface {
    private static var NULL_HEALTH_LISTENER_value:NullHealthListener;
    private static var NULL_HEALTH_LISTENER_set:Boolean = false;
    public static function get NULL_HEALTH_LISTENER():NullHealthListener {
        if (!NullHealthListener.NULL_HEALTH_LISTENER_set) {
            NullHealthListener.NULL_HEALTH_LISTENER_set = true;
            NullHealthListener.NULL_HEALTH_LISTENER_value = new NullHealthListener();
        }
        return NullHealthListener.NULL_HEALTH_LISTENER_value;
    }
    

    public function onHealthChange(...args):void {
        if (args.length == 0) {
            this.onHealthChange_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "onHealthChange");
    }

    private function onHealthChange_jo0():void {
    }
    }
}

