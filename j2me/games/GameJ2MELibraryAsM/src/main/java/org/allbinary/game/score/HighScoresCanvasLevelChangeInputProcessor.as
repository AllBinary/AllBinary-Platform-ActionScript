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
    import org.allbinary.game.input.event.GameKeyEventHandler;
    import org.allbinary.game.input.event.GameKeyEventUtil;
    import org.allbinary.game.score.displayable.HighScoresCanvas;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.util.BasicArrayList;

    public class HighScoresCanvasLevelChangeInputProcessor extends HighScoresCanvasInputProcessor implements UpdateMyFontInterface {
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var INSTRUCTIONS:String = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var anchor:int = 0;
        private var fontHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresCanvasLevelChangeInputProcessor():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)";
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeight = 0;
        }
    

    public function HighScoresCanvasLevelChangeInputProcessor(highScoresCanvas:HighScoresCanvas) {
        super(highScoresCanvas);
        this.initFieldsHighScoresCanvasLevelChangeInputProcessor();
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function open():void {
        GameKeyEventHandler.getInstance().addListener(this);
    }
    

    override public function close():void {
        GameKeyEventHandler.getInstance().removeListener(this);
    }
    

    override public function update():void {
        var list:BasicArrayList = this.getGameKeyEventList();
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            var anyType:Object = list.objectArray[index];
            var key:int = GameKeyEventUtil.getKey(anyType);
            if (key == Canvas.RIGHT) {
                this.getHighScoresCanvas().getGameInfo().nextGameLevel();
            } else if (key == Canvas.LEFT) {
                this.getHighScoresCanvas().getGameInfo().previousGameLevel();
            }
            this.getHighScoresCanvas().executeUpdate();
        }
        list.clear();
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var width:int = this.displayInfoSingleton.getLastWidth();
        var topScoresWidth:int = (graphics.getFont().stringWidth(this.INSTRUCTIONS) >> 1);
        graphics.drawString(this.INSTRUCTIONS, int((width >> 1) - topScoresWidth), int(this.fontHeight * 2), this.anchor);
    }
    }
}

