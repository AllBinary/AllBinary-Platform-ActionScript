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

    public class TouchScreenTypeFactory {
    private static var instance_value:TouchScreenTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():TouchScreenTypeFactory {
        if (!TouchScreenTypeFactory.instance_set) {
            TouchScreenTypeFactory.instance_set = true;
            TouchScreenTypeFactory.instance_value = new TouchScreenTypeFactory();
        }
        return TouchScreenTypeFactory.instance_value;
    }
    

    public static function getInstance():TouchScreenTypeFactory {
        return TouchScreenTypeFactory.instance;
    }
    

    public function TouchScreenTypeFactory() {
        super();
        var touchScreenFactory:TouchScreenFactory = TouchScreenFactory.getInstance();
        touchScreenFactory.setTouch(true);
    }
    }
}

