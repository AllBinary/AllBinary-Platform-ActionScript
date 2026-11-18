// Generated Code Do Not Modify
package org.allbinary.game.midlet {
    import org.allbinary.game.state.GameState;
    import org.allbinary.game.state.GameStateFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;

    public class GameMidletStateFactory {
    private static var INSTANCE_value:GameMidletStateFactory;
    private static var INSTANCE_set:Boolean = false;
    private static function get INSTANCE():GameMidletStateFactory {
        if (!GameMidletStateFactory.INSTANCE_set) {
            GameMidletStateFactory.INSTANCE_set = true;
            GameMidletStateFactory.INSTANCE_value = new GameMidletStateFactory();
        }
        return GameMidletStateFactory.INSTANCE_value;
    }
        public var logUtil:LogUtil = null;
        private var currentGameState:GameState = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameMidletStateFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.currentGameState = GameStateFactory.getInstance().NO_GAME_STATE;
        }
    

    public function GameMidletStateFactory() {
        super();
        this.initFieldsGameMidletStateFactory();
    }
    

    public static function getInstance():GameMidletStateFactory {
        return GameMidletStateFactory.INSTANCE;
    }
    

    public function getCurrentGameState():GameState {
        return this.currentGameState;
    }
    

    public function setCurrentGameState(currentGameState:GameState):void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().CURRENT).append(" GameState: ").append(StringUtil.getInstance().toString1(currentGameState)).toString(), this, "setCurrentGameState");
        this.currentGameState = currentGameState;
    }
    }
}

