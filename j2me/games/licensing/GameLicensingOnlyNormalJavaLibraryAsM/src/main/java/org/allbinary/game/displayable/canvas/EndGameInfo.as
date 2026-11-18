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
    import org.allbinary.game.GameInfo;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.logic.string.StringUtil;

    public class EndGameInfo {
        private var NORMAL_GAME_OVER:String = null;
        public var NORMAL_GAME_OVER_WIN:String = null;
        private var gameOverStr:String = null;
        private var winStr:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsEndGameInfo():void {
    this.NORMAL_GAME_OVER = "Game Over";
    this.NORMAL_GAME_OVER_WIN = "You Won";
    this.gameOverStr = StringUtil.getInstance().EMPTY_STRING;
    this.winStr = this.gameOverStr;
        }
    

    public function EndGameInfo() {
        super();
        this.initFieldsEndGameInfo();
    }
    

    public function update(gameInfo:GameInfo, myCanvas:MyCanvas):void {
        this.setGameOverStr(this.NORMAL_GAME_OVER);
        this.setWinStr(this.NORMAL_GAME_OVER_WIN);
    }
    

    public function getGameOverStr():String {
        return this.gameOverStr;
    }
    

    public function setGameOverStr(gameOverStr:String):void {
        this.gameOverStr = gameOverStr;
    }
    

    public function getWinStr():String {
        return this.winStr;
    }
    

    public function setWinStr(winStr:String):void {
        this.winStr = winStr;
    }
    }
}

