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

    public class BasicHighScoresGameInfoFactory {
    private static var SINGLETON_value:BasicHighScoresGameInfoFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():BasicHighScoresGameInfoFactory {
        if (!BasicHighScoresGameInfoFactory.SINGLETON_set) {
            BasicHighScoresGameInfoFactory.SINGLETON_set = true;
            BasicHighScoresGameInfoFactory.SINGLETON_value = new BasicHighScoresGameInfoFactory();
        }
        return BasicHighScoresGameInfoFactory.SINGLETON_value;
    }
        public var MULTI_PLAYER_SERVER:GameInfo = null;
        public var SINGLE_PLAYER_SERVER:GameInfo = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicHighScoresGameInfoFactory():void {
    this.MULTI_PLAYER_SERVER = new GameInfo(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
    this.SINGLE_PLAYER_SERVER = new GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
        }

        public function BasicHighScoresGameInfoFactory() {
            super();
            this.initFieldsBasicHighScoresGameInfoFactory();
        }
    

    public static function getInstance():BasicHighScoresGameInfoFactory {
        return BasicHighScoresGameInfoFactory.SINGLETON;
    }
    }
}

