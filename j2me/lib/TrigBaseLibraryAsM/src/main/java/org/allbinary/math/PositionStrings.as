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
package org.allbinary.math {

    public class PositionStrings {
    private static var instance_value:PositionStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():PositionStrings {
        if (!PositionStrings.instance_set) {
            PositionStrings.instance_set = true;
            PositionStrings.instance_value = new PositionStrings();
        }
        return PositionStrings.instance_value;
    }
        public var X:String = null;
        public var Y:String = null;
        public var X_LABEL:String = null;
        public var Y_LABEL:String = null;
        public var Z_LABEL:String = null;
        public var DX_LABEL:String = null;
        public var DY_LABEL:String = null;
        public var DZ_LABEL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPositionStrings():void {
    this.X = "x";
    this.Y = "y";
    this.X_LABEL = "x: ";
    this.Y_LABEL = "y: ";
    this.Z_LABEL = "z: ";
    this.DX_LABEL = "dx: ";
    this.DY_LABEL = "dy: ";
    this.DZ_LABEL = "dz: ";
        }

        public function PositionStrings() {
            super();
            this.initFieldsPositionStrings();
        }
    

    public static function getInstance():PositionStrings {
        return PositionStrings.instance;
    }
    }
}

