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
package org.allbinary.game.state {
    import org.allbinary.logic.NullUtil;

    public class GameStateFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!GameStateFactory.instance_set) {
            GameStateFactory.instance_set = true;
            GameStateFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameStateFactory.instance_value;
    }
        private var index:int = 0;
        public var NO_GAME_STATE:GameState = null;
        public var PLAYING_GAME_STATE:GameState = null;
        public var SHOW_END_RESULT_GAME_STATE:GameState = null;
        public var SHOW_HIGH_SCORE_GAME_STATE:GameState = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameStateFactory():void {
    this.index = 0;
    this.NO_GAME_STATE = this.createGameState("NO_GAME_STATE");
    this.PLAYING_GAME_STATE = this.createGameState("PLAYING_GAME_STATE");
    this.SHOW_END_RESULT_GAME_STATE = this.createGameState("SHOW_END_RESULT_GAME_STATE");
    this.SHOW_HIGH_SCORE_GAME_STATE = this.createGameState("SHOW_HIGH_SCORE_GAME_STATE");
        }
    

    public static function getInstance():GameStateFactory {
        if (GameStateFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameStateFactory.instance = new GameStateFactory();
        }
        return (GameStateFactory.instance as GameStateFactory);
    }
    

    public function GameStateFactory() {
        super();
        this.initFieldsGameStateFactory();
    }
    

    public function createGameState(name:String):GameState {
        return new GameState(name, this.index++);
    }
    }
}

