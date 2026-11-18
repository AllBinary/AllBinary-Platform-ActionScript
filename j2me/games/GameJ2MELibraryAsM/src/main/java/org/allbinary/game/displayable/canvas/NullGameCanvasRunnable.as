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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.game.state.GameState;
    import org.allbinary.game.state.GameStateFactory;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.ABHashtable;
    import java.lang.JThread;

    public class NullGameCanvasRunnable implements GameCanvasRunnableInterface {
    private static var NULL_GAME_CANVAS_RUNNABLE_value:NullGameCanvasRunnable;
    private static var NULL_GAME_CANVAS_RUNNABLE_set:Boolean = false;
    public static function get NULL_GAME_CANVAS_RUNNABLE():NullGameCanvasRunnable {
        if (!NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE_set) {
            NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE_set = true;
            NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE_value = new NullGameCanvasRunnable();
        }
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE_value;
    }
        public var gameStateFactory:GameStateFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullGameCanvasRunnable():void {
    this.gameStateFactory = GameStateFactory.getInstance();
        }

        public function NullGameCanvasRunnable() {
            super();
            this.initFieldsNullGameCanvasRunnable();
        }
    

    public function getTitle():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function isInitialized():Boolean {
        return false;
    }
    

    public function isPaused():Boolean {
        return false;
    }
    

    public function unPause():void {
    }
    

    public function pause():void {
    }
    

    public function isHighScoreSubmitted():Boolean {
        return false;
    }
    

    public function setHighScoreSubmitted(highScoreSubmitted:Boolean):void {
    }
    

    public function processGameOver():void {
    }
    

    public function isGameOver():Boolean {
        return false;
    }
    

    public function initCommands(cmdListener:CommandListener):void {
    }
    

    public function getCurrentStateHashtable():ABHashtable {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public function getLoadStateHashtable():ABHashtable {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public function setLoadStateHashtable(hashtable:ABHashtable):void {
    }
    

    public function getType():int {
        return -1;
    }
    

    public function setGameState(gameState:GameState):void {
    }
    

    public function getGameState():GameState {
        return this.gameStateFactory.NO_GAME_STATE;
    }
    

    public function itemStateChanged(item:Item):void {
    }
    

    public function paint(graphics:Graphics):void {
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    

    public function isRunning():Boolean {
        return false;
    }
    

    public function setRunning(isRunning:Boolean):void {
    }
    

    public function setThread(thread:JThread):void {
    }
    

    public function run():void {
    }
    }
}

