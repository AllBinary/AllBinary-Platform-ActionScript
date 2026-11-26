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
package org.allbinary.media {
    import org.allbinary.game.configuration.GameConfigurationCentral;

    public class AllBinaryVibration extends AllBinaryVibrationME {
    private static var VIBRATION_value:AllBinaryVibrationME;
    private static var VIBRATION_set:Boolean = false;
    private static function get VIBRATION():AllBinaryVibrationME {
        if (!AllBinaryVibration.VIBRATION_set) {
            AllBinaryVibration.VIBRATION_set = true;
            AllBinaryVibration.VIBRATION_value = AllBinaryNoVibration.NO_VIBRATION;
        }
        return AllBinaryVibration.VIBRATION_value;
    }
    private static function set VIBRATION(value:AllBinaryVibrationME):void {
        AllBinaryVibration.VIBRATION_set = true;
        AllBinaryVibration.VIBRATION_value = value;
    }
    

    public function AllBinaryVibration() {
        super();
    }
    

    public static function getInstance():AllBinaryVibrationME {
        return AllBinaryVibration.VIBRATION;
    }
    

    public static function init():void {
        if (GameConfigurationCentral.getInstance().VIBRATION.getValue().intValue() == 0) {
            AllBinaryVibration.VIBRATION = AllBinaryNoVibration.NO_VIBRATION;
        } else {
            AllBinaryVibration.VIBRATION = new AllBinaryVibration();
        }
    }
    

    override public function vibrate(duration:int, type:int, volume:int):void {
    }
    }
}

