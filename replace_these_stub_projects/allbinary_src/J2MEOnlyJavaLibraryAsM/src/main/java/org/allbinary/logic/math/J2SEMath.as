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
package org.allbinary.logic.math {

    public class J2SEMath {
    private static var instance_value:J2SEMath;
    private static var instance_set:Boolean = false;
    private static function get instance():J2SEMath {
        if (!J2SEMath.instance_set) {
            J2SEMath.instance_set = true;
            J2SEMath.instance_value = new J2SEMath();
        }
        return J2SEMath.instance_value;
    }
    

    public static function getInstance():J2SEMath {
        return J2SEMath.instance;
    }
    

    public function round(value:Number):int {
        return JMath.toInt32(value);
    }
    

    public function abs(value:Number):Number {
        return ((value < 0.0) ? -value : value);
    }
    

    public function absdouble(value:Number):Number {
        return ((value < 0.0) ? -value : value);
    }
    }
}

