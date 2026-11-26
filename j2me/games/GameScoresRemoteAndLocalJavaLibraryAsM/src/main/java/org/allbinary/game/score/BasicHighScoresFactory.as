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
        public var abeClientInformation:AbeClientInformationInterface = null;
        public var softwareInformation:SoftwareInformation = null;
        public var highScoresArray:Vector.<HighScores> = null;
        public var TOP:String = null;
        public var SCORES:String = null;
        public var PERSONAL_HIGH_SCORES:String = null;
        public var WORLD_TOP_SCORES:String = null;
        public var FETCH:String = null;

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
        SecondaryThreadPool.getInstance().runTask(new BasicHighScoresFactory_1(this, gameInfo, preload, highScoresResultsListener));
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

