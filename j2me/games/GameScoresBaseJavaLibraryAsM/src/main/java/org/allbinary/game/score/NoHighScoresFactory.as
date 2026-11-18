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
    import org.allbinary.logic.communication.log.LogUtil;

    public class NoHighScoresFactory extends HighScoresBase {
    private static var instance_value:NoHighScoresFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():NoHighScoresFactory {
        if (!NoHighScoresFactory.instance_set) {
            NoHighScoresFactory.instance_set = true;
            NoHighScoresFactory.instance_value = new NoHighScoresFactory();
        }
        return NoHighScoresFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var NO_HIGH_SCORES:Vector.<HighScores> = null;

        // Java field initializers run after the base constructor
        private function initFieldsNoHighScoresFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.NO_HIGH_SCORES = new Vector.<HighScores>(0);
        }
    

    public static function getInstance():NoHighScoresFactory {
        return NoHighScoresFactory.instance;
    }
    

    public function NoHighScoresFactory() {
        super();
        this.initFieldsNoHighScoresFactory();
    }
    

    override public function fetchHighScores(gameInfo:GameInfo, highScoresResultsListener:HighScoresResultsListener):void {
        this.logUtil.putF("Getting No HighScores", this, "fetchHighScores");
        highScoresResultsListener.setHighScoresArray(this.NO_HIGH_SCORES);
    }
    

    override public function createHighScoresHelper():HighScoresHelperBaseInterface {
        return new HighScoresHelperBase();
    }
    }
}

