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
    import org.allbinary.util.CircularIndexUtil;

    public class HighScoresHelper2 extends HighScoresHelperBase {
        private var circularIndexUtil:CircularIndexUtil = null;
        private var selectedHighScores:HighScores = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresHelper2():void {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0);
    this.selectedHighScores = NullHighScoresSingletonFactory.getInstance();
        }

        public function HighScoresHelper2() {
            super();
            this.initFieldsHighScoresHelper2();
        }
    

    override public function setSelectedHighScores(selectedHighScores:HighScores):void {
        this.selectedHighScores = selectedHighScores;
    }
    

    override public function getSelectedHighScores():HighScores {
        return this.selectedHighScores;
    }
    

    override public function setHighScoresArray(highScoresArrayP:Vector.<HighScores>):void {
        super.setHighScoresArray(highScoresArrayP);
        this.circularIndexUtil.setSize(this.highScoresArrayP.length);
        this.selectHighScores();
    }
    

    override public function selectHighScores():void {
        if (this.highScoresArrayP.length == 0) {
            this.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance());
            return;
        }
        this.circularIndexUtil.next();
        var highScores:HighScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()];
        var index:int = 0;
        while (highScores.getTotal() < 1 && index < this.highScoresArrayP.length) {
            highScores = this.highScoresArrayP[this.circularIndexUtil.next()];
            index++;
        }
        this.setSelectedHighScores(highScores);
    }
    }
}

