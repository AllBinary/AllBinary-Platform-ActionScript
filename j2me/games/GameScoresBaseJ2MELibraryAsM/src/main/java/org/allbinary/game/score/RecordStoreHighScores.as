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
    import java.io.JByteArrayInputStream;
    import java.io.JDataInputStream;
    import java.io.JEOFException;
    import java.io.JIOException;
    import org.allbinary.TsUtil;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.configuration.persistance.NullRecordComparator;
    import org.allbinary.game.configuration.persistance.NullRecordFilter;
    import org.allbinary.game.configuration.persistance.NullRecordStore;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.persistance.PlatformRecordIdUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class RecordStoreHighScores extends HighScores {
    private static var hashTable_value:ABHashtable;
    private static var hashTable_set:Boolean = false;
    private static function get hashTable():ABHashtable {
        if (!RecordStoreHighScores.hashTable_set) {
            RecordStoreHighScores.hashTable_set = true;
            RecordStoreHighScores.hashTable_value = StdUtil.getInstance().createHashtable();
        }
        return RecordStoreHighScores.hashTable_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var platformRecordIdUtil:PlatformRecordIdUtil = null;
        private var tsUtil:TsUtil = null;
        private var RECORD_ID:String = null;
        private var MAXHIGHSCORES:int = 0;
        private var gameInfo:GameInfo = null;
        private var abeClientInformation:AbeClientInformationInterface = null;
        private var recordComparatorInterface:RecordComparator = null;

        // Java field initializers run after the base constructor
        private function initFieldsRecordStoreHighScores():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.RECORD_ID = "_HS";
    this.MAXHIGHSCORES = 100;
    
    
    
        }
    

    public function RecordStoreHighScores(abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo, name:String, heading:String, columnTwoHeading:String, recordComparatorInterface:RecordComparator) {
        super(name, heading, columnTwoHeading);
        this.initFieldsRecordStoreHighScores();
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
        this.recordComparatorInterface = recordComparatorInterface;
        this.load();
    }
    

    public static function getInstance6(abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo, highScoreName:String, heading:String, columnTwoHeading:String, recordComparatorInterface:RecordComparator):HighScores {
        var highScoresCanBeNull:Object = RecordStoreHighScores.hashTable.get_((highScoreName as Object));
        if (highScoresCanBeNull == null) {
            var highScores:HighScores = new RecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
            RecordStoreHighScores.hashTable.put(highScores.getName(), highScores);
            return highScores;
        }
        return (highScoresCanBeNull as HighScores);
    }
    

    private function getRecordId(abeClientInformation:AbeClientInformationInterface):String {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, new StringMaker().append(CommonSeps.getInstance().UNDERSCORE).append(this.getName()).append(this.RECORD_ID).toString());
    }
    

    override public function addHighScore(newHighScore:HighScore):void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(new StringMaker().append("Adding HighScore: ").appendlong(newHighScore.getScore()).toString(), this, this.commonStrings.ADD);
            if (this.isTooManyHighScores()) {
                this.logUtil.putF("Removing Lowest Score", this, this.commonStrings.ADD);
                this.removeLowestHighScore();
            }
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            var highScoreBytes:Vector.<int> = newHighScore.getAsBytes();
            var recordId:int = recordStore.addRecord(highScoreBytes, 0, highScoreBytes.length);
            this.load();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.ADD);
                    recordStore.closeRecordStore();
                }
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
            }
        }
    }
    

    private function removeLowestHighScore():void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            var recordEnum:RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            var scoreComparator:ScoreComparator = ((this.recordComparatorInterface as ScoreComparator));
            var bestHighScore:HighScore = new HighScore(-1, "none", GameInfo.NONE, scoreComparator.getBestScore());
            var recordAsBytes:Vector.<int> = null;
            var byteArrayInputStream:ByteArrayInputStream = null;
            var inputStream:DataInputStream = null;
            while (recordEnum.hasNextElement()) {
                var id:int = recordEnum.nextRecordId();
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    var name:String = inputStream.readUTF();
                    var nextScore:Number = inputStream.readLong();
                    var nextCurrentHighScore:HighScore = new HighScore(id, name, GameInfo.NONE, nextScore);
                    if (this.recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparator.FOLLOWS) {
                        bestHighScore = nextCurrentHighScore;
                    }
                }
            }
            if (bestHighScore.getId() != -1) {
                this.logUtil.putF(new StringMaker().append("Removing Lowest HighScore: ").appendlong(bestHighScore.getScore()).toString(), this, this.commonStrings.LOAD);
                recordStore.deleteRecord(bestHighScore.getId());
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e);
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, "removeLowestHighScore");
                    recordStore.closeRecordStore();
                }
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e);
            }
        }
    }
    

    private function load():void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            this.setList(new BasicArrayListD());
            var recordEnum:RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            var recordAsBytes:Vector.<int> = null;
            var byteArrayInputStream:ByteArrayInputStream = null;
            var inputStream:DataInputStream = null;
            while (recordEnum.hasNextElement()) {
                var id:int = recordEnum.nextRecordId();
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        var name:String = inputStream.readUTF();
                        var score:Number = inputStream.readLong();
                        var newHighScore:HighScore = new HighScore(id, name, GameInfo.NONE, score);
                        var list:BasicArrayList = this.getList();
                        var size:int = list.size();
                        var lastIndex:int = size;
                        for (var index:int = 0; index < size; index++) {
                            var highScore:HighScore = (list.objectArray[index] as HighScore);
                            if (this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.PRECEDES) {
                                lastIndex = index;
                                break;
                            }
                        }
                        list.addAt(lastIndex, newHighScore);
                    } catch (e:*) {
                        this.logUtil.put("EOF", this, this.commonStrings.LOAD, e);
                        throw e;
                    }
                }
            }
        } catch (e:*) {
            this.logUtil.put("No High Scores", this, this.commonStrings.LOAD, e);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e);
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                }
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e);
            }
        }
    }
    

    private function isTooManyHighScores():Boolean {
        if (this.getList() != null && this.getList().size() < this.MAXHIGHSCORES) {
            return false;
        } else {
            this.logUtil.putF(new StringMaker().append("HighScores RecordStore Max Reached: ").appendint(this.MAXHIGHSCORES).toString(), this, "isTooManyHighScores");
            return true;
        }
    }
    

    override public function isBestScore(newHighScore:HighScore):Boolean {
        try {
            if (!this.isTooManyHighScores()) {
                this.logUtil.putF("Slot Available for a High Score", this, "isBestScore");
                return true;
            } else {
                var list:BasicArrayList = this.getList();
                var size:int = list.size();
                for (var index:int = 0; index < size; index++) {
                    var highScore:HighScore = (list.objectArray[index] as HighScore);
                    if (this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.FOLLOWS) {
                        this.logUtil.putF("Obtained a High Score", this, "isBestScore");
                        return true;
                    }
                }
            }
            this.logUtil.putF("Not a High Score", this, "isBestScore");
            return false;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
            throw e;
        }
    }
    

    override public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(super.toString());
        var list:BasicArrayList = this.getList();
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            var highScore:HighScore = (list.objectArray[index] as HighScore);
            stringBuffer.append(highScore.getScoreString());
            stringBuffer.append(CommonSeps.getInstance().COMMA_SEP);
        }
        return stringBuffer.toString();
    }
    }
}

