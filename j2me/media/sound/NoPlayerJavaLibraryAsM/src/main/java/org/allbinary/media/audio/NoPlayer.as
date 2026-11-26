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
    import javax.microedition.media.Control;
    import org.allbinary.logic.string.StringUtil;

    public class NoPlayer extends BasicPlayer {
    private static var NO_PLAYER_value:NoPlayer;
    private static var NO_PLAYER_set:Boolean = false;
    public static function get NO_PLAYER():NoPlayer {
        if (!NoPlayer.NO_PLAYER_set) {
            NoPlayer.NO_PLAYER_set = true;
            NoPlayer.NO_PLAYER_value = new NoPlayer();
        }
        return NoPlayer.NO_PLAYER_value;
    }
    

    public function NoPlayer() {
        super();
    }
    

    override public function close():void {
    }
    

    override public function getContentType():String {
        return StringUtil.getInstance().NULL_STRING;
    }
    

    override public function getControl(controlType:String):Control {
        return new NullControl();
    }
    

    override public function getControls():Vector.<Control> {
        return new Vector.<Control>(0);
    }
    }
}

