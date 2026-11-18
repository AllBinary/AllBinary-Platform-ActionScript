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
package org.allbinary.input {
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class AllBinarySensor implements AllBinarySensorListener {
    private static var NULL_ALLBINARY_SENSOR_value:AllBinarySensor;
    private static var NULL_ALLBINARY_SENSOR_set:Boolean = false;
    public static function get NULL_ALLBINARY_SENSOR():AllBinarySensor {
        if (!AllBinarySensor.NULL_ALLBINARY_SENSOR_set) {
            AllBinarySensor.NULL_ALLBINARY_SENSOR_set = true;
            AllBinarySensor.NULL_ALLBINARY_SENSOR_value = new AllBinarySensor();
        }
        return AllBinarySensor.NULL_ALLBINARY_SENSOR_value;
    }
    private static var max:int = 100;
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinarySensor():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
        }
    

    public function AllBinarySensor() {
        super();
        this.initFieldsAllBinarySensor();
    }
    

    public function init():void {
    }
    

    public function update():void {
    }
    

    public static function setMax(max:int):void {
        AllBinarySensor.max = max;
    }
    

    public static function getMax():int {
        return AllBinarySensor.max;
    }
    

    public function getId():int {
        return AllBinarySensor.getMax();
    }
    

    public function shutdown():void {
        this.logUtil.putF(this.commonStrings.START, this, "shutdown");
    }
    

    public function onSensorChange():void {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    }
}

