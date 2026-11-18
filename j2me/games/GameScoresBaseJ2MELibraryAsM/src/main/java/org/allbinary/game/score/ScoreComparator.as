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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import java.lang.JLong;

    public class ScoreComparator implements RecordComparator {
        public var logUtil:LogUtil = null;
        private var isHighestBest:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsScoreComparator():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function ScoreComparator(isHighestBest:Boolean) {
        super();
        this.initFieldsScoreComparator();
        this.isHighestBest = isHighestBest;
    }
    

    public function getBestScore():Number {
        return (this.isHighestBest ? JLong.MAX_VALUE : 0);
    }
    

    public function compare(recordOne:Vector.<int>, recordTwo:Vector.<int>):int {
        var byteArrayInputStreamOne:ByteArrayInputStream = new ByteArrayInputStream(recordOne);
        var inputStreamOne:DataInputStream = new DataInputStream(byteArrayInputStreamOne);
        var byteArrayInputStreamTwo:ByteArrayInputStream = new ByteArrayInputStream(recordTwo);
        var inputStreamTwo:DataInputStream = new DataInputStream(byteArrayInputStreamTwo);
        var scoreOne:Number = 0;
        var scoreTwo:Number = 0;
        try {
            inputStreamOne.readUTF();
            inputStreamTwo.readUTF();
            scoreOne = inputStreamOne.readLong();
            scoreTwo = inputStreamTwo.readLong();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
        } catch (e:*) {
            commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
        } catch (e:*) {
            commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
        }
        if (this.isHighestBest) {
            return this.getHighTooLow(scoreOne, scoreTwo);
        } else {
            return this.getLowTooHigh(scoreOne, scoreTwo);
        }
    }
    

    public function getHighTooLow(scoreOne:Number, scoreTwo:Number):int {
        if (scoreOne > scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne < scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
    

    public function getLowTooHigh(scoreOne:Number, scoreTwo:Number):int {
        if (scoreOne < scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne > scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
    }
}

