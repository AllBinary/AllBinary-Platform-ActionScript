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
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.ColorChangeEvent;
    import org.allbinary.graphics.color.ColorChangeListener;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.util.BasicArrayList;

    public class HighScoresPaintable extends Paintable implements ColorChangeListener, UpdateMyFontInterface {
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var basicColor:BasicColor = null;
        private var highScores:HighScores = null;
        private var anchor:int = 0;
        private var charHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresPaintable():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.highScores = NullHighScoresSingletonFactory.getInstance();
    this.anchor = Anchor.TOP_LEFT;
    this.charHeight = 0;
        }
    

    public function HighScoresPaintable() {
        super();
        this.initFieldsHighScoresPaintable();
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        var colorChangeEvent:ColorChangeEvent = (eventObject as ColorChangeEvent);
        this.basicColor = colorChangeEvent.getBasicColorP();
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var width:int = this.displayInfoSingleton.getLastWidth();
        var height:int = this.displayInfoSingleton.getLastHeight();
        graphics.setColor(this.getBasicColorP().intValue());
        var heading:String = this.highScores.getHeading();
        var topScoresWidth:int = (graphics.getFont().stringWidth(heading) >> 1);
        var charHeight:int = this.charHeight;
        graphics.drawString(heading, int((width >> 1) - topScoresWidth), charHeight, this.anchor);
        graphics.drawString(this.highScores.getColumnOneHeading(), 10, int(charHeight * 3), this.anchor);
        var columnTwoHeading:String = this.highScores.getColumnTwoHeading();
        var columnTwoHeadingWidth:int = graphics.getFont().stringWidth(columnTwoHeading);
        graphics.drawString(columnTwoHeading, int(int(width - 10) - columnTwoHeadingWidth), int(charHeight * 3), this.anchor);
        var index:int = 4;
        var largestSecondColumnWidth:int = columnTwoHeadingWidth;
        var list:BasicArrayList = this.highScores.getList();
        var size:int = list.size();
        var vectorIndex:int = 0;
        var highScore:HighScore = null;
        while (vectorIndex < size && int(charHeight * index) < int(height - (int(charHeight * 2)))) {
            highScore = (list.objectArray[vectorIndex] as HighScore);
            var nextScoreWidth:int = graphics.getFont().stringWidth(highScore.getScoreString());
            if (nextScoreWidth > largestSecondColumnWidth) {
                largestSecondColumnWidth = nextScoreWidth;
            }
            vectorIndex++;
        }
        vectorIndex = 0;
        while (vectorIndex < size && int(charHeight * index) < int(height - (int(charHeight * 2)))) {
            highScore = (list.objectArray[vectorIndex] as HighScore);
            graphics.drawString(highScore.getName(), 10, int(charHeight * index), this.anchor);
            graphics.drawString(highScore.getScoreString(), int(int(width - 10) - largestSecondColumnWidth), int(charHeight * index), this.anchor);
            index++;
            vectorIndex++;
        }
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    

    public function setHighScores(highScores:HighScores):void {
        this.highScores = highScores;
    }
    }
}

