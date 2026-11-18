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
package org.allbinary.game.score.remote {

    public class RemoteHighScoresData {
    private static var SINGLETON_value:RemoteHighScoresData;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():RemoteHighScoresData {
        if (!RemoteHighScoresData.SINGLETON_set) {
            RemoteHighScoresData.SINGLETON_set = true;
            RemoteHighScoresData.SINGLETON_value = new RemoteHighScoresData();
        }
        return RemoteHighScoresData.SINGLETON_value;
    }
        public var HIGH_SCORES:String = null;
        public var CUSTOMER_USER_NAME:String = null;
        public var DISPLAY_NAME:String = null;
        public var SCORE:String = null;
        public var GAME_INFO:String = null;
        public var GAME_CONFIGURATION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsRemoteHighScoresData():void {
    this.HIGH_SCORES = "HIGH_SCORES";
    this.CUSTOMER_USER_NAME = "CUSTOMER_USER_NAME";
    this.DISPLAY_NAME = "DISPLAY_NAME";
    this.SCORE = "SCORE";
    this.GAME_INFO = "GAME_INFO";
    this.GAME_CONFIGURATION = "GAME_CONFIGURATION";
        }

        public function RemoteHighScoresData() {
            super();
            this.initFieldsRemoteHighScoresData();
        }
    

    public static function getInstance():RemoteHighScoresData {
        return RemoteHighScoresData.SINGLETON;
    }
    }
}

