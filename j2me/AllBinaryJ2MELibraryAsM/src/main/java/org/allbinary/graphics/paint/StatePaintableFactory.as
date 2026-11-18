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
package org.allbinary.graphics.paint {

    public class StatePaintableFactory {
    private static var instance_value:StatePaintable;
    private static var instance_set:Boolean = false;
    private static function get instance():StatePaintable {
        if (!StatePaintableFactory.instance_set) {
            StatePaintableFactory.instance_set = true;
            StatePaintableFactory.instance_value = new StatePaintable();
        }
        return StatePaintableFactory.instance_value;
    }
    

    public static function getInstance():StatePaintable {
        return StatePaintableFactory.instance;
    }
    }
}

