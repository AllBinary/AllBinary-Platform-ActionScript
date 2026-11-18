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
package org.allbinary.game.ag.layer.hud.basic.score {
    import org.allbinary.game.ag.layer.hud.basic.NumberStringHud;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;

    public class ScoreHudWidget extends NumberStringHud {
    

    public static function getInstance3(maxscore:int, location:int, direction:int):ScoreHudWidget {
        return new ScoreHudWidget(maxscore, location, direction, 2, BasicColorFactory.getInstance().GREY);
    }
    

    public function ScoreHudWidget(maxscore:int, location:int, direction:int, bufferZone:int, basicColor:BasicColor) {
        super("Pts ", maxscore, location, direction, bufferZone, basicColor);
        this.updateMaxHeight = 14;
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        super.updateMeasurement(graphics);
    }
    }
}

