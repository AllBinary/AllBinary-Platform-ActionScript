/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;

    public class HighScoresHelperBase implements HighScoresHelperBaseInterface {
        public var logUtil:LogUtil = null;
        public var highScoresArrayP:Vector.<HighScores> = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresHelperBase():void {
    this.logUtil = LogUtil.getInstance();
    this.highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray;
        }

        public function HighScoresHelperBase() {
            super();
            this.initFieldsHighScoresHelperBase();
        }
    

    public function setHighScoresArray(highScoresArrayP:Vector.<HighScores>):void {
        if (highScoresArrayP != null) {
            commonStrings = CommonStrings.getInstance();
            this.logUtil.putF(new StringMaker().append(commonStrings.START).appendint(highScoresArrayP.length).toString(), this, "setHighScoresArray");
        } else {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.putF(commonStrings.START, this, "setHighScoresArray");
        }
        this.highScoresArrayP = highScoresArrayP;
    }
    

    public function getNextHighScores():HighScores {
        return NullHighScoresSingletonFactory.getInstance();
    }
    

    public function isAnyHighScores():Boolean {
        throw new JException("RuntimeException", "");
    }
    

    public function setSelectedHighScores(selectedHighScores:HighScores):void {
    }
    

    public function getSelectedHighScores():HighScores {
        return NullHighScoresSingletonFactory.getInstance();
    }
    

    public function getHighScoresArray():Vector.<HighScores> {
        return this.highScoresArrayP;
    }
    

    public function selectHighScores():void {
    }
    }
}

