// Generated Code Do Not Modify
package org.allbinary.game.input.analog {
    import org.allbinary.graphics.CustomGPoint;

    public class AnalogLocationInput {
    private static var NULL_ANALOG_LOCATION_INPUT_value:AnalogLocationInput;
    private static var NULL_ANALOG_LOCATION_INPUT_set:Boolean = false;
    public static function get NULL_ANALOG_LOCATION_INPUT():AnalogLocationInput {
        if (!AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT_set) {
            AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT_set = true;
            AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT_value = new AnalogLocationInput(-1);
        }
        return AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT_value;
    }
        private var playerId:int = 0;
        private var customGPoint:CustomGPoint = null;
        private var rz:int = 0;
        private var rightTrigger:int = 0;
        private var leftTrigger:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAnalogLocationInput():void {
    
    
    this.rz = 0;
    this.rightTrigger = 0;
    this.leftTrigger = 0;
        }
    

    public function AnalogLocationInput(playerId:int) {
        super();
        this.initFieldsAnalogLocationInput();
        this.playerId = playerId;
        this.customGPoint = new CustomGPoint(0, 0, 0);
    }
    

    public function getPlayerId():int {
        return this.playerId;
    }
    

    public function getCustomGPoint():CustomGPoint {
        return this.customGPoint;
    }
    

    public function getRz():int {
        return this.rz;
    }
    

    public function setRz(rz:int):void {
        this.rz = rz;
    }
    

    public function getRightTrigger():int {
        return this.rightTrigger;
    }
    

    public function setRightTrigger(rightTrigger:int):void {
        this.rightTrigger = rightTrigger;
    }
    

    public function getLeftTrigger():int {
        return this.leftTrigger;
    }
    

    public function setLeftTrigger(leftTrigger:int):void {
        this.leftTrigger = leftTrigger;
    }
    }
}

