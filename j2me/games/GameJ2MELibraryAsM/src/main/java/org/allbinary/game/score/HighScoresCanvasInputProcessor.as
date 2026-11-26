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
package org.allbinary.game.score {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.game.input.PlayerGameInput;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.score.displayable.HighScoresCanvas;
    import org.allbinary.util.BasicArrayListD;

    public class HighScoresCanvasInputProcessor extends PlayerGameInput {
        private var highScoresCanvas:HighScoresCanvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresCanvasInputProcessor():void {
    
        }
    

    public function HighScoresCanvasInputProcessor(highScoresCanvas:HighScoresCanvas) {
        super(new BasicArrayListD(), new BasicArrayListD(), -1);
        this.initFieldsHighScoresCanvasInputProcessor();
        this.highScoresCanvas = highScoresCanvas;
    }
    

    public function open():void {
    }
    

    public function close():void {
    }
    

    override public function onPressGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        super.onPressGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    override public function onDownGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        super.onDownGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    override public function onUpGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        super.onUpGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(graphics:Graphics):void {
    }
    

    public function getHighScoresCanvas():HighScoresCanvas {
        return this.highScoresCanvas;
    }
    }
}

