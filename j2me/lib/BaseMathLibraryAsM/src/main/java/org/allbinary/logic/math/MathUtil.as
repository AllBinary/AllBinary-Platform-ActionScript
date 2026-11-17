// Generated Code Do Not Modify
package org.allbinary.logic.math {

    public class MathUtil {
    private static var instance_value:MathUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():MathUtil {
        if (!MathUtil.instance_set) {
            MathUtil.instance_set = true;
            MathUtil.instance_value = new MathUtil();
        }
        return MathUtil.instance_value;
    }
        private var ACCURACY:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsMathUtil():void {
    this.ACCURACY = 100;
        }

        public function MathUtil() {
            super();
            this.initFieldsMathUtil();
        }
    

    public static function getInstance():MathUtil {
        return MathUtil.instance;
    }
    

    public function getTotalDigits(digits:int):int {
        var total:int = 0;
        while (digits > 0) {
            digits = int(digits / 10);
            total++;
        }
        return total;
    }
    

    public function sqrt(value:int):int {
        if (value <= 1) {
            return value;
        }
        var accumulated:int = value >> 1;
        var result:int = (int(accumulated + (int(value / accumulated)))) >> 1;
        do {
            accumulated = result;
            result = (int(accumulated + (int(value / accumulated)))) >> 1;
        } while (accumulated > result);
        return accumulated;
    }
    

    public function sqrtd(x:int):Number {
        if (x == 0) {
            return Number(0.0);
        }
        if (x < 0) {
            return Number(-1.0);
        }
        var result:Number = Number(x);
        for (var index:int = 0; index < this.ACCURACY; index++) {
            result = (result + (Number(x) / result)) / 2.0;
        }
        return result;
    }
    

    public function abs(value:int):int {
        return ((value < 0) ? -value : value);
    }
    

    public function abslong(value:Number):Number {
        return ((value < 0) ? -value : value);
    }
    

    public function min(value:int, value2:int):int {
        return ((value <= value2) ? value : value2);
    }
    

    public function max(value:int, value2:int):int {
        return ((value >= value2) ? value : value2);
    }
    }
}

