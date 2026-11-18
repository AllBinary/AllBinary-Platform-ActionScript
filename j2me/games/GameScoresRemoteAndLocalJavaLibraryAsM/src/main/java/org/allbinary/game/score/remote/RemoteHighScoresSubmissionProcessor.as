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
package org.allbinary.game.score.remote {
    import org.allbinary.game.GameInfoData;
    import org.allbinary.game.configuration.GameConfigurationCentral;
    import org.allbinary.game.score.HighScore;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.HashtableUtil;
    import java.lang.JLong;

    public class RemoteHighScoresSubmissionProcessor implements RemoteHighScoresSubmissionProcessorInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var noCrypt:NoCrypt = null;

        // Java field initializers run after the base constructor
        private function initFieldsRemoteHighScoresSubmissionProcessor():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.noCrypt = new NoCrypt();
        }
    

    public function RemoteHighScoresSubmissionProcessor() {
        super();
        this.initFieldsRemoteHighScoresSubmissionProcessor();
    }
    

    public function process(remoteHighScores:RemoteHighScores, abeClientInformation:AbeClientInformationInterface, highScore:HighScore):void {
        try {
            this.logUtil.putF("Begin Remote HighScores Submission", this, this.commonStrings.PROCESS);
            var gameInfoData:GameInfoData = GameInfoData.getInstance();
            var hashtable:ABHashtable = abeClientInformation.toHashtable();
            HashtableUtil.getInstance().putAll(highScore.getGameInfo().toHashtable(), hashtable);
            hashtable.put(RemoteHighScoresData.getInstance().CUSTOMER_USER_NAME, "None");
            hashtable.put(RemoteHighScoresData.getInstance().DISPLAY_NAME, highScore.getName());
            hashtable.put(gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation().toString());
            hashtable.put(remoteHighScores.ASCENDING, remoteHighScores.getAscending().toString());
            var displayInfoSingleton:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
            hashtable.put(displayInfoSingleton.ORIENTATION, BooleanFactory.getInstance().toStringb(displayInfoSingleton.isPortrait()));
            hashtable.put(RemoteHighScoresData.getInstance().GAME_CONFIGURATION, GameConfigurationCentral.getInstance().toString());
            hashtable.put(RemoteHighScoresData.getInstance().SCORE, String(highScore.getScore()));
            if (XmlRpcAbeClient.isOnline) {
                var resultHashtable:ABHashtable = (new XmlRpcRemoteHighScoresClient(abeClientInformation, "highscoresubmissionservicessl.php", "HighScoreSubmissionService.process").get_(hashtable, this.noCrypt) as ABHashtable);
                remoteHighScores.update(resultHashtable);
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.PROCESS, e);
        }
    }
    }
}

