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
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;
    import java.lang.JRunnable;

    public class Sound implements SoundInterface, JRunnable {
        private var resource:String = null;
        public var player:Player = null;

        // Java field initializers run after the base constructor
        private function initFieldsSound():void {
    
    this.player = NoPlayer.NO_PLAYER;
        }
    

    public function Sound(resource:String) {
        super();
        this.initFieldsSound();
        this.resource = resource;
    }
    

    public function getResource():String {
        return this.resource;
    }
    

    public function getPlayerP():Player {
        return this.player;
    }
    

    public function setPlayerP(player:Player):void {
        this.player = player;
    }
    

    public function init():void {
    }
    

    public function getDuration():int {
        return -1;
    }
    

    public function run():void {
        try {
            this.player.start();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN);
        }
    }
    }
}

