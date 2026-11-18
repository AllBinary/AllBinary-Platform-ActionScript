// Generated Code Do Not Modify
package org.allbinary.game.score {
    import org.allbinary.game.GameInfo;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.system.SoftwareInformation;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;

    public class BasicHighScoresFactory extends HighScoresBase {
        public var logUtil:LogUtil = null;
        private var abeClientInformation:AbeClientInformationInterface = null;
        private var highScoresArray:Vector.<HighScores> = null;
        private var TOP:String = null;
        private var SCORES:String = null;
        private var PERSONAL_HIGH_SCORES:String = null;
        private var FETCH:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicHighScoresFactory():void {
    this.logUtil = LogUtil.getInstance();
    
    this.highScoresArray = new Vector.<HighScores>(1);
    this.TOP = "Top";
    this.SCORES = "Scores";
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores";
    this.FETCH = "fetchHighScores";
        }
    

    public function BasicHighScoresFactory(abeClientInformation:AbeClientInformationInterface, softwareInformation:SoftwareInformation) {
        super();
        this.initFieldsBasicHighScoresFactory();
        this.abeClientInformation = abeClientInformation;
    }
    

    override public function fetchHighScores(gameInfo:GameInfo, highScoresResultsListener:HighScoresResultsListener):void {
        this.logUtil.putF("Getting Local HighScores", this, this.FETCH);
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true);
    }
    

    override public function fetchHighScoresPreload(gameInfo:GameInfo, highScoresResultsListener:HighScoresResultsListener, preload:Boolean):void {
        try {
            this.highScoresArray[0] = RecordStoreHighScores.getInstance6(this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, new ScoreComparator(true));
            highScoresResultsListener.setHighScoresArray(this.highScoresArray);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.FETCH, e);
        }
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

