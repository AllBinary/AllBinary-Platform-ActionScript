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
    import org.allbinary.game.state.GameState;
    import org.allbinary.game.state.GameStateFactory;

    public class IntermissionFactory {
    private static var instance_value:IntermissionFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():IntermissionFactory {
        if (!IntermissionFactory.instance_set) {
            IntermissionFactory.instance_set = true;
            IntermissionFactory.instance_value = new IntermissionFactory();
        }
        return IntermissionFactory.instance_value;
    }
        public var START_LEVEL_INTERMISSION_GAME_STATE:GameState = null;
        public var WAIT_LEVEL_INTERMISSION_GAME_STATE:GameState = null;
        public var SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE:GameState = null;
        public var SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE:GameState = null;

        // Java field initializers run after the base constructor
        private function initFieldsIntermissionFactory():void {
    this.START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE");
    this.WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE");
    this.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE");
    this.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE");
        }

        public function IntermissionFactory() {
            super();
            this.initFieldsIntermissionFactory();
        }
    

    public static function getInstance():IntermissionFactory {
        return IntermissionFactory.instance;
    }
    }
}

