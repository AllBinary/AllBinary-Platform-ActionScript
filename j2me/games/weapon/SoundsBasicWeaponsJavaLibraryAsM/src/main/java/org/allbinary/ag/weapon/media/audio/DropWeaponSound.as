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
package org.allbinary.ag.weapon.media.audio {
    import org.allbinary.media.audio.CompositeSound;
    import org.allbinary.media.audio.Sound;

    public class DropWeaponSound extends CompositeSound {
    private static var soundInterface_value:Sound;
    private static var soundInterface_set:Boolean = false;
    private static function get soundInterface():Sound {
        if (!DropWeaponSound.soundInterface_set) {
            DropWeaponSound.soundInterface_set = true;
            DropWeaponSound.soundInterface_value = new DropWeaponSound();
        }
        return DropWeaponSound.soundInterface_value;
    }
    private static function set soundInterface(value:Sound):void {
        DropWeaponSound.soundInterface_set = true;
        DropWeaponSound.soundInterface_value = value;
    }
    

    public function DropWeaponSound() {
        super("resource:/wav/mine.wav");
    }
    

    public static function getInstance():Sound {
        return DropWeaponSound.soundInterface;
    }
    }
}

