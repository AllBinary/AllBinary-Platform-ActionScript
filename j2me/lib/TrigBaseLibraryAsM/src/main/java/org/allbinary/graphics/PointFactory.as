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
package org.allbinary.graphics {

    public class PointFactory {
    private static var instance_value:PointFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():PointFactory {
        if (!PointFactory.instance_set) {
            PointFactory.instance_set = true;
            PointFactory.instance_value = new PointFactory();
        }
        return PointFactory.instance_value;
    }
        public var ZERO_ZERO:GPoint = null;

        // Java field initializers run after the base constructor
        private function initFieldsPointFactory():void {
    this.ZERO_ZERO = this.createXYZ(0, 0, 0);
        }
    

    public static function getInstance():PointFactory {
        return PointFactory.instance;
    }
    

    public function init():void {
    }
    

    public function PointFactory() {
        super();
        this.initFieldsPointFactory();
    }
    

    public function createXY(x:int, y:int):GPoint {
        return new GPoint(x, y, 0);
    }
    

    public function createXYZ(x:int, y:int, z:int):GPoint {
        return new GPoint(x, y, z);
    }
    }
}

