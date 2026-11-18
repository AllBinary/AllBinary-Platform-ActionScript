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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.canvas.Processor;
    import org.allbinary.game.score.HighScores;
    import org.allbinary.game.score.HighScoresHelperBase;
    import org.allbinary.game.score.NullHighScoresSingletonFactory;
    import org.allbinary.game.state.GameStateFactory;
    import org.allbinary.graphics.paint.NullPaintable;

    public class EndGameProcessor extends Processor {
        public var gameStateFactory:GameStateFactory = null;
        private var gameCanvas:AllBinaryGameCanvas = null;
        private var WAIT:Number = 0;

        // Java field initializers run after the base constructor
        private function initFieldsEndGameProcessor():void {
    this.gameStateFactory = GameStateFactory.getInstance();
    
    this.WAIT = 5000;
        }
    

    public function EndGameProcessor(gameCanvas:AllBinaryGameCanvas) {
        super();
        this.initFieldsEndGameProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    override public function process():void {
        if (this.gameCanvas.isHighScoreSubmitted()) {
            if (this.gameCanvas.getGameStateTimeHelper().isElapsedTNT(this.WAIT)) {
                if (this.gameCanvas.getGameState() == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE) {
                    var highScoresBase:HighScoresHelperBase = (this.gameCanvas.highScoresHelper as HighScoresHelperBase);
                    var highScores:HighScores = highScoresBase.getSelectedHighScores();
                    if (highScores != NullHighScoresSingletonFactory.getInstance()) {
                        highScoresBase.selectHighScores();
                        this.gameCanvas.getRealHighScoresPaintable().setHighScores(highScores);
                        this.gameCanvas.setGameState(this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE);
                        this.gameCanvas.setHighScoresPaintable(this.gameCanvas.getRealHighScoresPaintable());
                    }
                } else if (this.gameCanvas.getGameState() == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
                    this.gameCanvas.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
                    this.gameCanvas.setHighScoresPaintable(NullPaintable.getInstance());
                }
            }
        }
    }
    }
}

