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
    import org.allbinary.game.score.Scoreable;

    public class ScoreableAddOnlyForHud extends Scoreable {
        private var scoreHudWidget:ScoreHudWidget = null;

        // Java field initializers run after the base constructor
        private function initFieldsScoreableAddOnlyForHud():void {
    
        }
    

    public function ScoreableAddOnlyForHud(scoreVectorGraphic:ScoreHudWidget) {
        super(0);
        this.initFieldsScoreableAddOnlyForHud();
        this.scoreHudWidget = scoreVectorGraphic;
        this.getScoreHudWidget().set_(0);
    }
    

    override public function removePoints(points:int):void {
    }
    

    override public function addPoints(points:int):void {
        super.addPoints(points);
        this.getScoreHudWidget().add(points);
    }
    

    public function getScoreHudWidget():ScoreHudWidget {
        return this.scoreHudWidget;
    }
    }
}

