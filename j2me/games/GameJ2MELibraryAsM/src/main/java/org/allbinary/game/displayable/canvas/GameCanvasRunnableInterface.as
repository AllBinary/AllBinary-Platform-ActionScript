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
    import org.allbinary.game.state.GameStateCompositeInterface;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.thread.RunnableInterface;
    import org.allbinary.util.ABHashtable;

    public interface GameCanvasRunnableInterface extends RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface {
    

    function getTitle():String;
    

    function isInitialized():Boolean;
    

    function isPaused():Boolean;
    

    function unPause():void;
    

    function pause():void;
    

    function isHighScoreSubmitted():Boolean;
    

    function setHighScoreSubmitted(highScoreSubmitted:Boolean):void;
    

    function processGameOver():void;
    

    function isGameOver():Boolean;
    

    function initCommands(cmdListener:CommandListener):void;
    

    function getCurrentStateHashtable():ABHashtable;
    

    function getLoadStateHashtable():ABHashtable;
    

    function setLoadStateHashtable(hashtable:ABHashtable):void;
    

    function getType():int;
    }
}

