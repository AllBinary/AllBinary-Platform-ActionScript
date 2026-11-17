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
    import org.allbinary.logic.math.MathUtil;

    public class DistanceUtil {
    private static var instance_value:DistanceUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():DistanceUtil {
        if (!DistanceUtil.instance_set) {
            DistanceUtil.instance_set = true;
            DistanceUtil.instance_value = new DistanceUtil();
        }
        return DistanceUtil.instance_value;
    }
        private var mathUtil:MathUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsDistanceUtil():void {
    this.mathUtil = MathUtil.getInstance();
        }

        public function DistanceUtil() {
            super();
            this.initFieldsDistanceUtil();
        }
    

    public static function getInstance():DistanceUtil {
        return DistanceUtil.instance;
    }
    

    public function getDistance(x1:int, y1:int, x2:int, y2:int):int {
        var dx:int = int(x1 - x2);
        var dy:int = int(y1 - y2);
        return this.mathUtil.sqrt(int((int(dx * dx)) + (int(dy * dy))));
    }
    }
}

