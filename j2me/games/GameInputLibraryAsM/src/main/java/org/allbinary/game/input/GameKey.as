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
package org.allbinary.game.input {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;

    public class GameKey extends Input {
    private static var NULL_GAME_KEY_value:GameKey;
    private static var NULL_GAME_KEY_set:Boolean = false;
    public static function get NULL_GAME_KEY():GameKey {
        if (!GameKey.NULL_GAME_KEY_set) {
            GameKey.NULL_GAME_KEY_set = true;
            GameKey.NULL_GAME_KEY_value = new GameKey(-1, StringUtil.getInstance().NULL_STRING);
        }
        return GameKey.NULL_GAME_KEY_value;
    }
    

    public function GameKey(key:int, name:String) {
        super(key, name);
    }
    

    override public function toString():String {
        return new StringMaker().append("GameKey ").append(super.toString()).toString();
    }
    }
}

