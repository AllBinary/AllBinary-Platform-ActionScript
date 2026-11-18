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
    import org.allbinary.game.GameInfo;
    import org.allbinary.string.CommonStrings;

    public class HighScoresBase implements HighScoresFactoryInterface {
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresBase():void {
    this.commonStrings = CommonStrings.getInstance();
        }
    

    public function HighScoresBase() {
        super();
        this.initFieldsHighScoresBase();
    }
    

    public function fetchHighScores(gameInfo:GameInfo, highScoresResultsListener:HighScoresResultsListener):void {
        throw new JException("RuntimeException", "");
    }
    

    public function fetchHighScoresPreload(gameInfo:GameInfo, highScoresResultsListener:HighScoresResultsListener, preload:Boolean):void {
        throw new JException("RuntimeException", "");
    }
    

    public function createHighScoresHelper():HighScoresHelperBaseInterface {
        throw new JException("RuntimeException", "");
    }
    }
}

