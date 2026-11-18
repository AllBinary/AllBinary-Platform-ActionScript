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
package org.allbinary.game.multiplayer.layer {
    import org.allbinary.logic.string.StringUtil;

    public class MultiplayerBehavior {
    private static var NULL_MULTIPLAYER_BEHAVIOR_value:MultiplayerBehavior;
    private static var NULL_MULTIPLAYER_BEHAVIOR_set:Boolean = false;
    public static function get NULL_MULTIPLAYER_BEHAVIOR():MultiplayerBehavior {
        if (!MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR_set) {
            MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR_set = true;
            MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR_value = new MultiplayerBehavior(StringUtil.getInstance().EMPTY_STRING);
        }
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR_value;
    }
    

    public function MultiplayerBehavior(username:String) {
        super();
    }
    

    public function startTick():void {
    }
    

    public function endTick():void {
    }
    

    public function getApproximateElapsed():Number {
        return 0;
    }
    }
}

