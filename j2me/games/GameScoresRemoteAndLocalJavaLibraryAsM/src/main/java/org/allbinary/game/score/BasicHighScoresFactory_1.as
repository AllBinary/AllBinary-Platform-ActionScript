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

    // Java anonymous class of BasicHighScoresFactory
    public class BasicHighScoresFactory_1 extends ARunnable {
        public var jouter:BasicHighScoresFactory;
        public var gameInfo:*;
        public var preload:*;
        public var highScoresResultsListener:*;

        public function BasicHighScoresFactory_1(jouter:BasicHighScoresFactory, gameInfo:*, preload:*, highScoresResultsListener:*) {
            super();
            this.jouter = jouter;
            this.gameInfo = gameInfo;
            this.preload = preload;
            this.highScoresResultsListener = highScoresResultsListener;
        }
            

            override public function run():void {
                var logUtil:LogUtil = LogUtil.getInstance();
                try {
                    logUtil.putF(this.jouter.commonStrings.START, this, this.jouter.FETCH);
                    this.jouter.highScoresArray[0] = RecordStoreHighScores.getInstance6(this.jouter.abeClientInformation, gameInfo, this.jouter.TOP, this.jouter.PERSONAL_HIGH_SCORES, this.jouter.SCORES, new ScoreComparator(true));
                    var gameType:GameType = gameInfo.getGameType();
                    var gameTypeFactory:GameTypeFactory = GameTypeFactory.getInstance();
                    var gameInfo2:GameInfo = gameInfo;
                    if (gameType == gameTypeFactory.SINGLE_PLAYER || gameType == gameTypeFactory.BOT) {
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().SINGLE_PLAYER_SERVER;
                    } else if (gameType == gameTypeFactory.MULTI_PLAYER) {
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().MULTI_PLAYER_SERVER;
                    }
                    this.jouter.highScoresArray[1] = RemoteHighScores.getInstancePreload(this.jouter.abeClientInformation, this.jouter.softwareInformation, gameInfo2, this.jouter.WORLD_TOP_SCORES, this.jouter.SCORES, BooleanFactory.getInstance().FALSE, preload);
                    logUtil.putF(this.jouter.commonStrings.END, this, this.jouter.FETCH);
                    LastFetchHighScoresFactory.getInstance().highScoresArray = this.jouter.highScoresArray;
                    highScoresResultsListener.setHighScoresArray(this.jouter.highScoresArray);
                } catch (e:*) {
                    logUtil.put(this.jouter.commonStrings.EXCEPTION, this, this.jouter.FETCH, e);
                }
            }
    }
}
