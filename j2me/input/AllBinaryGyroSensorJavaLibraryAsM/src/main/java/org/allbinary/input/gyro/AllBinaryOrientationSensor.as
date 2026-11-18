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
package org.allbinary.input.gyro {
    import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface;
    import org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener;
    import org.allbinary.input.AllBinarySensor;
    import org.allbinary.logic.math.Orientation;
    import org.allbinary.logic.math.PrimitiveFloatUtil;

    public class AllBinaryOrientationSensor extends AllBinarySensor {
    private static var NULL_ALLBINARY_ORIENTATION_SENSOR_value:AllBinaryOrientationSensor;
    private static var NULL_ALLBINARY_ORIENTATION_SENSOR_set:Boolean = false;
    public static function get NULL_ALLBINARY_ORIENTATION_SENSOR():AllBinaryOrientationSensor {
        if (!AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR_set) {
            AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR_set = true;
            AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR_value = new AllBinaryOrientationSensor();
        }
        return AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR_value;
    }
        public var sensorDataFloatArray:Vector.<Number> = null;
        public var listener:CompleteMotionGestureInputEventListenerInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryOrientationSensor():void {
    this.sensorDataFloatArray = PrimitiveFloatUtil.getArrayInstance();
    this.listener = NoCompleteMotionGestureInputEventListener.getInstance();
        }
    

    public function setCompleteMotionGestureInputEventListener(completeMotionGestureInputEventListenerInterface:CompleteMotionGestureInputEventListenerInterface):void {
        this.listener = completeMotionGestureInputEventListenerInterface;
    }
    

    public function AllBinaryOrientationSensor() {
        super();
        this.initFieldsAllBinaryOrientationSensor();
    }
    

    public function getOrientation():Orientation {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    }
}

