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
package org.allbinary.game {

    public class GameInfoData {
    private static var instance_value:GameInfoData;
    private static var instance_set:Boolean = false;
    private static function get instance():GameInfoData {
        if (!GameInfoData.instance_set) {
            GameInfoData.instance_set = true;
            GameInfoData.instance_value = new GameInfoData();
        }
        return GameInfoData.instance_value;
    }
        public var GAME_TYPE:String = null;
        public var GAME_MODE:String = null;
        public var PLAYER_TYPE:String = null;
        public var HIGHEST_LEVEL:String = null;
        public var CURRENT_LEVEL:String = null;
        public var SOFTWARE_INFORMATION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameInfoData():void {
    this.GAME_TYPE = "GAME_TYPE";
    this.GAME_MODE = "GAME_MODE";
    this.PLAYER_TYPE = "PLAYER_TYPE";
    this.HIGHEST_LEVEL = "HIGHEST_LEVEL";
    this.CURRENT_LEVEL = "CURRENT_LEVEL";
    this.SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION";
        }
    

    public static function getInstance():GameInfoData {
        return GameInfoData.instance;
    }
    

    public function GameInfoData() {
        super();
        this.initFieldsGameInfoData();
    }
    }
}

