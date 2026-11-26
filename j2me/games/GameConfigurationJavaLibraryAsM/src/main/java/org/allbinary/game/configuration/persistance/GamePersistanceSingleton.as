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
package org.allbinary.game.configuration.persistance {

    public class GamePersistanceSingleton extends KeyValuePersistance {
    private static var GAME_PERSISTANCE_value:GamePersistanceSingleton;
    private static var GAME_PERSISTANCE_set:Boolean = false;
    private static function get GAME_PERSISTANCE():GamePersistanceSingleton {
        if (!GamePersistanceSingleton.GAME_PERSISTANCE_set) {
            GamePersistanceSingleton.GAME_PERSISTANCE_set = true;
            GamePersistanceSingleton.GAME_PERSISTANCE_value = new GamePersistanceSingleton();
        }
        return GamePersistanceSingleton.GAME_PERSISTANCE_value;
    }
    private static function set GAME_PERSISTANCE(value:GamePersistanceSingleton):void {
        GamePersistanceSingleton.GAME_PERSISTANCE_set = true;
        GamePersistanceSingleton.GAME_PERSISTANCE_value = value;
    }
    

    public static function getInstance():GamePersistanceSingleton {
        return GamePersistanceSingleton.GAME_PERSISTANCE;
    }
    

    public function GamePersistanceSingleton() {
        super(GamePersistanceStrings.getInstance().SAVED_GAME_RECORD_ID);
    }
    }
}

