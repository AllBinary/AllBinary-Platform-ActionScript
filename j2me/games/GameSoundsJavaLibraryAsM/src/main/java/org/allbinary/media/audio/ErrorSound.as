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

    public class ErrorSound extends CompositeSound {
    private static var soundInterface_value:Sound;
    private static var soundInterface_set:Boolean = false;
    private static function get soundInterface():Sound {
        if (!ErrorSound.soundInterface_set) {
            ErrorSound.soundInterface_set = true;
            ErrorSound.soundInterface_value = new ErrorSound();
        }
        return ErrorSound.soundInterface_value;
    }
    private static function set soundInterface(value:Sound):void {
        ErrorSound.soundInterface_set = true;
        ErrorSound.soundInterface_value = value;
    }
    

    public function ErrorSound() {
        super("resource:/wav/error.wav");
    }
    

    public static function getInstance():Sound {
        return ErrorSound.soundInterface;
    }
    }
}

