/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

    public class GamePersistanceStrings {
    private static var instance_value:GamePersistanceStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():GamePersistanceStrings {
        if (!GamePersistanceStrings.instance_set) {
            GamePersistanceStrings.instance_set = true;
            GamePersistanceStrings.instance_value = new GamePersistanceStrings();
        }
        return GamePersistanceStrings.instance_value;
    }
        public var SAVED_GAME_RECORD_ID:String = null;
        public var SAVED_GAME_CONFIGURATION_RECORD_ID:String = null;
        public var DEFAULT_INPUT_MAPPING_RECORD_ID:String = null;
        public var SAVED_INPUT_CONFIGURATION_RECORD_ID:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGamePersistanceStrings():void {
    this.SAVED_GAME_RECORD_ID = "_SG";
    this.SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC";
    this.DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM";
    this.SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC";
        }

        public function GamePersistanceStrings() {
            super();
            this.initFieldsGamePersistanceStrings();
        }
    

    public static function getInstance():GamePersistanceStrings {
        return GamePersistanceStrings.instance;
    }
    }
}

