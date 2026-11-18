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
    import java.util.JEnumeration;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.score.HighScore;
    import org.allbinary.game.score.HighScores;
    import org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.SoftwareInformation;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.EnumerationUtil;
    import java.lang.JLong;

    public class RemoteHighScores extends HighScores {
    private static var hashTable_value:ABHashtable;
    private static var hashTable_set:Boolean = false;
    private static function get hashTable():ABHashtable {
        if (!RemoteHighScores.hashTable_set) {
            RemoteHighScores.hashTable_set = true;
            RemoteHighScores.hashTable_value = StdUtil.getInstance().createHashtable();
        }
        return RemoteHighScores.hashTable_value;
    }
        public var logUtil:LogUtil = null;
        private var enumerationUtil:EnumerationUtil = null;
        private var abeClientInformation:AbeClientInformationInterface = null;
        private var softwareInformation:SoftwareInformation = null;
        private var ascending:* = null;
        public var ASCENDING:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsRemoteHighScores():void {
    this.logUtil = LogUtil.getInstance();
    this.enumerationUtil = EnumerationUtil.getInstance();
    
    
    this.ascending = null;
    this.ASCENDING = "ASCENDING";
        }
    

    public function RemoteHighScores(abeClientInformation:AbeClientInformationInterface, softwareInformation:SoftwareInformation, gameInfo:GameInfo, heading:String, columnTwoHeading:String, ascending:*, preload:Boolean) {
        super(gameInfo.toString(), heading, columnTwoHeading);
        this.initFieldsRemoteHighScores();
        this.abeClientInformation = abeClientInformation;
        this.softwareInformation = softwareInformation;
        this.setAscending(ascending);
        if (preload) {
            RemoteHighScoresProcessorFactory.getInstance().process(this, this.abeClientInformation, gameInfo);
        }
    }
    

    public static function getInstance6(abeClientInformation:AbeClientInformationInterface, softwareInformation:SoftwareInformation, gameInfo:GameInfo, heading:String, columnTwoHeading:String, isAscending:*):HighScores {
        return RemoteHighScores.getInstancePreload(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, true);
    }
    

    public static function getInstancePreload(abeClientInformation:AbeClientInformationInterface, softwareInformation:SoftwareInformation, gameInfo:GameInfo, heading:String, columnTwoHeading:String, isAscending:*, preload:Boolean):HighScores {
        var logUtil:LogUtil = LogUtil.getInstance();
        try {
            var highScores:HighScores = (RemoteHighScores.hashTable.get_(gameInfo) as HighScores);
            if (highScores == null) {
                highScores = new RemoteHighScores(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload);
                RemoteHighScores.hashTable.put(gameInfo, highScores);
            }
            return highScores;
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, RemoteErrorHighScoresSingletonFactory.getInstance(), commonStrings.GET_INSTANCE, e);
            return RemoteErrorHighScoresSingletonFactory.getInstance();
        }
    }
    

    override public function addHighScore(newHighScore:HighScore):void {
        RemoteHighScoresSubmissionProcessorFactory.getInstance().process(this, this.abeClientInformation, newHighScore);
    }
    

    public function update(hashtable:ABHashtable):void {
        this.getList().clear();
        var vector:BasicArrayList = (hashtable.get_((RemoteHighScoresData.getInstance().HIGH_SCORES as Object)) as BasicArrayList);
        if (vector != null) {
            var size:int = vector.size();
            for (var index:int = 0; index < size; index++) {
                var highScoreVector:BasicArrayList = (vector.get_(index) as BasicArrayList);
                var displayName:String = (highScoreVector.get_(0) as String);
                var score:String = (highScoreVector.get_(1) as String);
                var longScore:Number = Number(parseInt(score));
                var highScore:HighScore = new HighScore(-1, displayName, null, longScore);
                this.getList().add(highScore);
            }
        } else {
            var NEXT_ELEMENT:String = new StringMaker().append(CommonLabels.getInstance().NEXT).append("Element: ").toString();
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            var enumeration:JEnumeration = hashtable.elements();
            var nextElement:Object = null;
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                nextElement = this.enumerationUtil.nextElement(enumeration);
                this.logUtil.putF(NEXT_ELEMENT + JString.ofObject(nextElement), this, commonStrings.PROCESS);
            }
        }
    }
    

    private function setAscending(ascending:*):void {
        this.ascending = ascending;
    }
    

    public function getAscending():* {
        return this.ascending;
    }
    

    public function getSoftwareInformation():SoftwareInformation {
        return this.softwareInformation;
    }
    }
}

