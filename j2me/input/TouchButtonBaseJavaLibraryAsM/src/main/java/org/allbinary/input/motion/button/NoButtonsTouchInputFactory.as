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
package org.allbinary.input.motion.button {

    public class NoButtonsTouchInputFactory {
    private static var instance_value:BaseTouchInput;
    private static var instance_set:Boolean = false;
    private static function get instance():BaseTouchInput {
        if (!NoButtonsTouchInputFactory.instance_set) {
            NoButtonsTouchInputFactory.instance_set = true;
            NoButtonsTouchInputFactory.instance_value = new BaseTouchInput();
        }
        return NoButtonsTouchInputFactory.instance_value;
    }
    

    public static function getInstance():BaseTouchInput {
        return NoButtonsTouchInputFactory.instance;
    }
    }
}

