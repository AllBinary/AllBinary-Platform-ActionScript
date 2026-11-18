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
    import org.allbinary.thread.ARunnable;
    import org.allbinary.game.BasicHighScoresGameInfoFactory;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.GameType;
    import org.allbinary.game.GameTypeFactory;
    import org.allbinary.game.score.remote.RemoteHighScores;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.system.SoftwareInformation;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.thread.SecondaryThreadPool;

    public class BasicHighScoresFactory extends HighScoresBase {
        public var logUtil:LogUtil = null;
        private var abeClientInformation:AbeClientInformationInterface = null;
        private var softwareInformation:SoftwareInformation = null;
        private var highScoresArray:Vector.<HighScores> = null;
        private var TOP:String = null;
        private var SCORES:String = null;
        private var PERSONAL_HIGH_SCORES:String = null;
        private var WORLD_TOP_SCORES:String = null;
        private var FETCH:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicHighScoresFactory():void {
    this.logUtil = LogUtil.getInstance();
    
    
    this.highScoresArray = new Vector.<HighScores>(2);
    this.TOP = "Top";
    this.SCORES = "Scores";
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores";
    this.WORLD_TOP_SCORES = "World Top Scores";
    this.FETCH = "fetchHighScores";
        }
    

    public function BasicHighScoresFactory(abeClientInformation:AbeClientInformationInterface, softwareInformation:SoftwareInformation) {
        super();
        this.initFieldsBasicHighScoresFactory();
        this.abeClientInformation = abeClientInformation;
        this.softwareInformation = softwareInformation;
    }
    

    override public function fetchHighScores(gameInfo:GameInfo, highScoresResultsListener:HighScoresResultsListener):void {
        this.logUtil.putF("Getting Remote/Local HighScores", this, this.FETCH);
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true);
    }
    

    override public function fetchHighScoresPreload(gameInfo:GameInfo, highScoresResultsListener:HighScoresResultsListener, preload:Boolean):void {
        SecondaryThreadPool.getInstance().runTask(new ARunnable() /* Java anonymous class body: implement it as a named subclass
            

            public function run():void {
                var logUtil:LogUtil = LogUtil.getInstance();
                try {
                    logUtil.putF(this.commonStrings.START, this, this.FETCH);
                    this.highScoresArray[0] = RecordStoreHighScores.getInstance6(this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, new ScoreComparator(true));
                    var gameType:GameType = gameInfo.getGameType();
                    var gameTypeFactory:GameTypeFactory = GameTypeFactory.getInstance();
                    var gameInfo2:GameInfo = gameInfo;
                    if (gameType == gameTypeFactory.SINGLE_PLAYER || gameType == gameTypeFactory.BOT) {
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().SINGLE_PLAYER_SERVER;
                    } else if (gameType == gameTypeFactory.MULTI_PLAYER) {
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().MULTI_PLAYER_SERVER;
                    }
                    this.highScoresArray[1] = RemoteHighScores.getInstancePreload(this.abeClientInformation, this.softwareInformation, gameInfo2, this.WORLD_TOP_SCORES, this.SCORES, BooleanFactory.getInstance().FALSE, preload);
                    logUtil.putF(this.commonStrings.END, this, this.FETCH);
                    LastFetchHighScoresFactory.getInstance().highScoresArray = this.highScoresArray;
                    highScoresResultsListener.setHighScoresArray(this.highScoresArray);
                } catch (e:*) {
                    logUtil.put(this.commonStrings.EXCEPTION, this, this.FETCH, e);
                }
            } */);
    }
    

    override public function createHighScoresHelper():HighScoresHelperBaseInterface {
        return new HighScoresHelper2();
    }
    

    public static function loaded(index2:int):Boolean {
        if (index2 >= 0) {
            return true;
        }
        return false;
    }
    }
}

