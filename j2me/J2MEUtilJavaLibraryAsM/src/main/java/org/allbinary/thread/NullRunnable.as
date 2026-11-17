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

    public class NullRunnable extends ARunnable {
    private static var instance_value:NullRunnable;
    private static var instance_set:Boolean = false;
    private static function get instance():NullRunnable {
        if (!NullRunnable.instance_set) {
            NullRunnable.instance_set = true;
            NullRunnable.instance_value = new NullRunnable();
        }
        return NullRunnable.instance_value;
    }
    

    public static function getInstance():NullRunnable {
        return NullRunnable.instance;
    }
    

    public function NullRunnable() {
        super();
    }
    }
}

