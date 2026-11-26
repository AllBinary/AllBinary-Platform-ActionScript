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
package org.allbinary.game.input {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;

    public class InputFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!InputFactory.instance_set) {
            InputFactory.instance_set = true;
            InputFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return InputFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        InputFactory.instance_set = true;
        InputFactory.instance_value = value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        public var KEY_CODE_LABEL:String = null;
        public var DEVICE_ID_LABEL:String = null;
        public var MAX:int = 0;
        public var inputIntegerArray:Vector.<Input> = null;
        public var NO_INPUT:Input = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.KEY_CODE_LABEL = "KeyCode: ";
    this.DEVICE_ID_LABEL = "DeviceId: ";
    this.MAX = SmallIntegerSingletonFactory.getInstance().getMin();
    this.inputIntegerArray = new Vector.<Input>(this.MAX);
    this.NO_INPUT = new Input(0, this.commonStrings.UNKNOWN);
        }
    

    public static function getInstance():InputFactory {
        if (InputFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            InputFactory.instance = new InputFactory();
        }
        return (InputFactory.instance as InputFactory);
    }
    

    public function InputFactory() {
        super();
        this.initFieldsInputFactory();
        var size:int = this.inputIntegerArray.length;
        for (var index:int = 0; index < size; index++) {
            this.inputIntegerArray[index] = this.NO_INPUT;
        }
    }
    

    public function add(id:int, input:Input):void {
        this.inputIntegerArray[id] = input;
    }
    

    public function getInstanceById(id:int):Input {
        if (id < 0) {
            id = -id;
        }
        if (id > this.inputIntegerArray.length) {
            this.logUtil.putF(new StringMaker().append("Warning id: ").appendint(id).toString(), this, this.commonStrings.GET_INSTANCE);
            return this.NO_INPUT;
        }
        return this.inputIntegerArray[id];
    }
    }
}

