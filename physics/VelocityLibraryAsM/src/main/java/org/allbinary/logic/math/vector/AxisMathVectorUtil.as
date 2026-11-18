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
package org.allbinary.logic.math.vector {
    import org.allbinary.math.NoDecimalTrigTable;

    public class AxisMathVectorUtil {
    private static var instance_value:AxisMathVectorUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():AxisMathVectorUtil {
        if (!AxisMathVectorUtil.instance_set) {
            AxisMathVectorUtil.instance_set = true;
            AxisMathVectorUtil.instance_value = new AxisMathVectorUtil();
        }
        return AxisMathVectorUtil.instance_value;
    }
        private var noDecimalTrigTable:NoDecimalTrigTable = null;

        // Java field initializers run after the base constructor
        private function initFieldsAxisMathVectorUtil():void {
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
        }

        public function AxisMathVectorUtil() {
            super();
            this.initFieldsAxisMathVectorUtil();
        }
    

    public static function getInstance():AxisMathVectorUtil {
        return AxisMathVectorUtil.instance;
    }
    

    public function calculateX(magnitude:Number, angle:int):Number {
        return magnitude * this.noDecimalTrigTable.cos(angle) / 10;
    }
    

    public function calculateY(magnitude:Number, angle:int):Number {
        return magnitude * this.noDecimalTrigTable.sin(angle) / 10;
    }
    

    public function calculateZ(magnitude:Number, otherAngle:int):Number {
        return magnitude * this.noDecimalTrigTable.sin(otherAngle) / 10;
    }
    }
}

