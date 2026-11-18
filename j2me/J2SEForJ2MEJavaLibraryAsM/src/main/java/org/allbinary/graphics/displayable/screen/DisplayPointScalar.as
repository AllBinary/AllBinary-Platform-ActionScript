/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.graphics.displayable.screen {
    import org.allbinary.graphics.GPoint;

    public class DisplayPointScalar {
    private static var instance_value:DisplayPointScalar;
    private static var instance_set:Boolean = false;
    private static function get instance():DisplayPointScalar {
        if (!DisplayPointScalar.instance_set) {
            DisplayPointScalar.instance_set = true;
            DisplayPointScalar.instance_value = new DisplayPointScalar();
        }
        return DisplayPointScalar.instance_value;
    }
    

    public static function getInstance():DisplayPointScalar {
        return DisplayPointScalar.instance;
    }
    

    public function DisplayPointScalar() {
        super();
    }
    

    public function processX(value:int):int {
        return value;
    }
    

    public function processY(value:int):int {
        return value;
    }
    

    public function process(point:GPoint):GPoint {
        return point;
    }
    }
}

