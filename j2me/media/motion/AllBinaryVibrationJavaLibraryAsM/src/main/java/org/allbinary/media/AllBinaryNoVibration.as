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

    public class AllBinaryNoVibration extends AllBinaryVibrationME {
    private static var NO_VIBRATION_value:AllBinaryVibrationME;
    private static var NO_VIBRATION_set:Boolean = false;
    public static function get NO_VIBRATION():AllBinaryVibrationME {
        if (!AllBinaryNoVibration.NO_VIBRATION_set) {
            AllBinaryNoVibration.NO_VIBRATION_set = true;
            AllBinaryNoVibration.NO_VIBRATION_value = new AllBinaryNoVibration();
        }
        return AllBinaryNoVibration.NO_VIBRATION_value;
    }
    public static function set NO_VIBRATION(value:AllBinaryVibrationME):void {
        AllBinaryNoVibration.NO_VIBRATION_set = true;
        AllBinaryNoVibration.NO_VIBRATION_value = value;
    }
    

    override public function vibrate(duration:int, type:int, volume:int):void {
    }
    }
}

