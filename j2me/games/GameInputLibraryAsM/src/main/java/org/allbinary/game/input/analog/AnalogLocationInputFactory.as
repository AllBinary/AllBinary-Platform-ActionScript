// Generated Code Do Not Modify
package org.allbinary.game.input.analog {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class AnalogLocationInputFactory {
    private static var instance_value:AnalogLocationInputFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AnalogLocationInputFactory {
        if (!AnalogLocationInputFactory.instance_set) {
            AnalogLocationInputFactory.instance_set = true;
            AnalogLocationInputFactory.instance_value = new AnalogLocationInputFactory();
        }
        return AnalogLocationInputFactory.instance_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnalogLocationInputFactory():void {
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():AnalogLocationInputFactory {
        return AnalogLocationInputFactory.instance;
    }
    

    public function AnalogLocationInputFactory() {
        super();
        this.initFieldsAnalogLocationInputFactory();
    }
    

    public function addPlayer(playerInputId:int):void {
        var analogLocationInput:AnalogLocationInput = AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT;
        if (playerInputId < this.list.size()) {
            analogLocationInput = (this.list.get_(playerInputId) as AnalogLocationInput);
        }
        if (analogLocationInput == AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT) {
            analogLocationInput = new AnalogLocationInput(playerInputId);
            this.list.add(analogLocationInput);
        }
    }
    

    public function getInstanceForPlayer(playerInputId:int):AnalogLocationInput {
        return (this.list.get_(playerInputId) as AnalogLocationInput);
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

