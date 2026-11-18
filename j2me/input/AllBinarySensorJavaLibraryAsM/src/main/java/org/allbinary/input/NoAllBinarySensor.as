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
package org.allbinary.input {

    public class NoAllBinarySensor extends AllBinarySensor {
    private static var instance_value:NoAllBinarySensor;
    private static var instance_set:Boolean = false;
    private static function get instance():NoAllBinarySensor {
        if (!NoAllBinarySensor.instance_set) {
            NoAllBinarySensor.instance_set = true;
            NoAllBinarySensor.instance_value = new NoAllBinarySensor();
        }
        return NoAllBinarySensor.instance_value;
    }
    

    public static function getInstance():NoAllBinarySensor {
        return NoAllBinarySensor.instance;
    }
    

    public function NoAllBinarySensor() {
        super();
    }
    }
}

