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

    public class HighScoresHelper extends HighScoresHelperBase {
        private var circularIndexUtil:CircularIndexUtil = null;
        public var lastIndex:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresHelper():void {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0);
    this.lastIndex = -1;
        }

        public function HighScoresHelper() {
            super();
            this.initFieldsHighScoresHelper();
        }
    

    override public function setHighScoresArray(highScoresArrayP:Vector.<HighScores>):void {
        super.setHighScoresArray(highScoresArrayP);
        this.circularIndexUtil.setSize(this.highScoresArrayP.length);
    }
    

    override public function getNextHighScores():HighScores {
        var highScores:HighScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()];
        var index:int = 0;
        while ((highScores.getTotal() < 1 || this.lastIndex == this.circularIndexUtil.getIndex()) && index < this.highScoresArrayP.length) {
            this.circularIndexUtil.next();
            highScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()];
            index++;
        }
        this.lastIndex = this.circularIndexUtil.getIndex();
        return highScores;
    }
    

    override public function isAnyHighScores():Boolean {
        if (this.highScoresArrayP.length < 1) {
            return false;
        }
        var anyScores:Boolean = false;
        var highScores:HighScores = null;
        for (var index:int = int(this.highScoresArrayP.length - 1); index >= 0; index--) {
            highScores = this.highScoresArrayP[index];
            if (highScores.getTotal() > 0) {
                anyScores = true;
            }
        }
        return anyScores;
    }
    }
}

