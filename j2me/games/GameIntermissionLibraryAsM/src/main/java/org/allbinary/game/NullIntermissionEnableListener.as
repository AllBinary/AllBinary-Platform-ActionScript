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
package org.allbinary.game {

    public class NullIntermissionEnableListener implements IntermissionEnableListenerInterface {
    private static var SINGLETON_value:IntermissionEnableListenerInterface;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():IntermissionEnableListenerInterface {
        if (!NullIntermissionEnableListener.SINGLETON_set) {
            NullIntermissionEnableListener.SINGLETON_set = true;
            NullIntermissionEnableListener.SINGLETON_value = new NullIntermissionEnableListener();
        }
        return NullIntermissionEnableListener.SINGLETON_value;
    }
    

    public static function getInstance():IntermissionEnableListenerInterface {
        return NullIntermissionEnableListener.SINGLETON;
    }
    

    public function NullIntermissionEnableListener() {
        super();
    }
    

    public function notifyIntermission(enable:Boolean):void {
    }
    }
}

