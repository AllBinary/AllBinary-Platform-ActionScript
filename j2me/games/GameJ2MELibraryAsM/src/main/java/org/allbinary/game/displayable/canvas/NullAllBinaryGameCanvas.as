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
    import org.allbinary.game.layer.AllBinaryGameLayerManager;

    public class NullAllBinaryGameCanvas implements AllBinaryGameCanvasInterface {
    private static var NULL_ALLBINARY_GAME_CANVAS_value:NullAllBinaryGameCanvas;
    private static var NULL_ALLBINARY_GAME_CANVAS_set:Boolean = false;
    public static function get NULL_ALLBINARY_GAME_CANVAS():NullAllBinaryGameCanvas {
        if (!NullAllBinaryGameCanvas.NULL_ALLBINARY_GAME_CANVAS_set) {
            NullAllBinaryGameCanvas.NULL_ALLBINARY_GAME_CANVAS_set = true;
            NullAllBinaryGameCanvas.NULL_ALLBINARY_GAME_CANVAS_value = new NullAllBinaryGameCanvas();
        }
        return NullAllBinaryGameCanvas.NULL_ALLBINARY_GAME_CANVAS_value;
    }
    

    public function getLayerManager():AllBinaryGameLayerManager {
        throw new JException("RuntimeException", "");
    }
    

    public function addCommand(cmd:Command):void {
        throw new JException("RuntimeException", "");
    }
    

    public function getHeight():int {
        throw new JException("RuntimeException", "");
    }
    

    public function getWidth():int {
        throw new JException("RuntimeException", "");
    }
    

    public function removeCommand(cmd:Command):void {
        throw new JException("RuntimeException", "");
    }
    

    public function setCommandListener(l:CommandListener):void {
        throw new JException("RuntimeException", "");
    }
    }
}

