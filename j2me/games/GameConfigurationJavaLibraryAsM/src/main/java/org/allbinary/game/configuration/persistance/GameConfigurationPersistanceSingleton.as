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

    public class GameConfigurationPersistanceSingleton extends KeyValuePersistance {
    private static var GAME_PERSISTANCE_value:GameConfigurationPersistanceSingleton;
    private static var GAME_PERSISTANCE_set:Boolean = false;
    private static function get GAME_PERSISTANCE():GameConfigurationPersistanceSingleton {
        if (!GameConfigurationPersistanceSingleton.GAME_PERSISTANCE_set) {
            GameConfigurationPersistanceSingleton.GAME_PERSISTANCE_set = true;
            GameConfigurationPersistanceSingleton.GAME_PERSISTANCE_value = new GameConfigurationPersistanceSingleton();
        }
        return GameConfigurationPersistanceSingleton.GAME_PERSISTANCE_value;
    }
    private static function set GAME_PERSISTANCE(value:GameConfigurationPersistanceSingleton):void {
        GameConfigurationPersistanceSingleton.GAME_PERSISTANCE_set = true;
        GameConfigurationPersistanceSingleton.GAME_PERSISTANCE_value = value;
    }
    

    public static function getInstance():GameConfigurationPersistanceSingleton {
        return GameConfigurationPersistanceSingleton.GAME_PERSISTANCE;
    }
    

    public function GameConfigurationPersistanceSingleton() {
        super(GamePersistanceStrings.getInstance().SAVED_GAME_CONFIGURATION_RECORD_ID);
    }
    }
}

