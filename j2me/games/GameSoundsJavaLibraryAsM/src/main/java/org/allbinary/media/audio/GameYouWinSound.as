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
    public class GameYouWinSound extends CompositeSound {
    private static var soundInterface_value:Sound;
    private static var soundInterface_set:Boolean = false;
    private static function get soundInterface():Sound {
        if (!GameYouWinSound.soundInterface_set) {
            GameYouWinSound.soundInterface_set = true;
            GameYouWinSound.soundInterface_value = new GameYouWinSound();
        }
        return GameYouWinSound.soundInterface_value;
    }
    private static function set soundInterface(value:Sound):void {
        GameYouWinSound.soundInterface_set = true;
        GameYouWinSound.soundInterface_value = value;
    }
    

    public function GameYouWinSound() {
        super("resource:/wav/youwin.wav");
    }
    

    public static function getInstance():Sound {
        return GameYouWinSound.soundInterface;
    }
    }
}

