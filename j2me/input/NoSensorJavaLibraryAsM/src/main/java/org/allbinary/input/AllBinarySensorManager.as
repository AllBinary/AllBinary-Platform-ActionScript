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
    import org.allbinary.input.accelerometer.AccelerometerSensorFactory;
    import org.allbinary.input.gyro.GyroSensorFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class AllBinarySensorManager {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!AllBinarySensorManager.instance_set) {
            AllBinarySensorManager.instance_set = true;
            AllBinarySensorManager.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return AllBinarySensorManager.instance_value;
    }
    private static function set instance(value:Object):void {
        AllBinarySensorManager.instance_set = true;
        AllBinarySensorManager.instance_value = value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        public var ORIENTATION_SENSOR_INPUT:String = null;
        public var ORIENTATION_TYPE:String = null;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinarySensorManager():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():AllBinarySensorManager {
        if (AllBinarySensorManager.instance == NullUtil.getInstance().NULL_OBJECT) {
            AllBinarySensorManager.instance = new AllBinarySensorManager();
        }
        return (AllBinarySensorManager.instance as AllBinarySensorManager);
    }
    

    public function AllBinarySensorManager() {
        super();
        this.initFieldsAllBinarySensorManager();
        try {
            GyroSensorFactory.init();
            AccelerometerSensorFactory.init();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
        }
    }
    

    public function init():void {
    }
    

    public function getSensorNamesList():BasicArrayList {
        return this.list;
    }
    

    public function shutdown():void {
    }
    }
}

