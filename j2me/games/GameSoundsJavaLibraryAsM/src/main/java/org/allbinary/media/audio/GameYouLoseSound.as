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
    public class GameYouLoseSound extends CompositeSound {
    private static var soundInterface_value:Sound;
    private static var soundInterface_set:Boolean = false;
    private static function get soundInterface():Sound {
        if (!GameYouLoseSound.soundInterface_set) {
            GameYouLoseSound.soundInterface_set = true;
            GameYouLoseSound.soundInterface_value = new GameYouLoseSound();
        }
        return GameYouLoseSound.soundInterface_value;
    }
    private static function set soundInterface(value:Sound):void {
        GameYouLoseSound.soundInterface_set = true;
        GameYouLoseSound.soundInterface_value = value;
    }
    

    public function GameYouLoseSound() {
        super("resource:/wav/youlose.wav");
    }
    

    public static function getInstance():Sound {
        return GameYouLoseSound.soundInterface;
    }
    }
}

