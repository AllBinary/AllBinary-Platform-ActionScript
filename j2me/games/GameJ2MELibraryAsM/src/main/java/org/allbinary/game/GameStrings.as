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

    public class GameStrings {
    private static var instance_value:GameStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():GameStrings {
        if (!GameStrings.instance_set) {
            GameStrings.instance_set = true;
            GameStrings.instance_value = new GameStrings();
        }
        return GameStrings.instance_value;
    }
        public var PROCESS_TICK:String = null;
        public var ON_GAME_INITIALIZED:String = null;
        public var UPDATESURFACE:String = null;
        public var ON_SET_DISPLAYABLE:String = null;
        public var UNPAUSE:String = null;
        public var TOGGLE_MENU:String = null;
        public var SET_GAME_OVER:String = null;
        public var GAME_STATE:String = null;
        public var SET_GAME_STATE:String = null;
        public var STOP_GAME_CANVAS_RUNNABLE_INTERFACE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameStrings():void {
    this.PROCESS_TICK = "processTick";
    this.ON_GAME_INITIALIZED = "onGameInitialized";
    this.UPDATESURFACE = "updateSurface";
    this.ON_SET_DISPLAYABLE = "onSetDisplayable";
    this.UNPAUSE = "unPause";
    this.TOGGLE_MENU = "toggleMenu";
    this.SET_GAME_OVER = "setGameOver";
    this.GAME_STATE = "Game State: ";
    this.SET_GAME_STATE = "setGameState";
    this.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface";
        }

        public function GameStrings() {
            super();
            this.initFieldsGameStrings();
        }
    

    public static function getInstance():GameStrings {
        return GameStrings.instance;
    }
    }
}

