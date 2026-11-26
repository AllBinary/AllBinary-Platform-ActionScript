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
package org.allbinary.media.audio {

    //Use 8hz16bitmono for most J2ME
    public class FireworksSound extends CompositeSound {
    private static var soundInterface_value:Sound;
    private static var soundInterface_set:Boolean = false;
    private static function get soundInterface():Sound {
        if (!FireworksSound.soundInterface_set) {
            FireworksSound.soundInterface_set = true;
            FireworksSound.soundInterface_value = new FireworksSound();
        }
        return FireworksSound.soundInterface_value;
    }
    private static function set soundInterface(value:Sound):void {
        FireworksSound.soundInterface_set = true;
        FireworksSound.soundInterface_value = value;
    }
    

    public function FireworksSound() {
        super("resource:/wav/fireworks.wav");
    }
    

    public static function getInstance():Sound {
        return FireworksSound.soundInterface;
    }
    }
}

