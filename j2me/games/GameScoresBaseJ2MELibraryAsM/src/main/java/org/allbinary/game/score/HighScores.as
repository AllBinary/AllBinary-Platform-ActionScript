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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class HighScores implements HighScoresInterface {
        private var orderedHighScoresList:BasicArrayList = null;
        private var name:String = null;
        private var heading:String = null;
        private var columnOneHeading:String = null;
        private var columnTwoHeading:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScores():void {
    this.orderedHighScoresList = new BasicArrayListD();
    
    
    this.columnOneHeading = "Name";
    
        }
    

    public function HighScores(name:String, heading:String, columnTwoHeading:String) {
        super();
        this.initFieldsHighScores();
        this.name = name;
        this.heading = heading;
        this.columnTwoHeading = columnTwoHeading;
    }
    

    public function setList(orderedHighScoresList:BasicArrayList):void {
        this.orderedHighScoresList = orderedHighScoresList;
    }
    

    public function getList():BasicArrayList {
        return this.orderedHighScoresList;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getTotal():int {
        return this.getList().size();
    }
    

    public function addHighScore(newHighScore:HighScore):void {
        this.orderedHighScoresList.add(newHighScore);
    }
    

    public function getHeading():String {
        return this.heading;
    }
    

    public function getColumnOneHeading():String {
        return this.columnOneHeading;
    }
    

    public function getColumnTwoHeading():String {
        return this.columnTwoHeading;
    }
    

    public function isBestScore(newHighScore:HighScore):Boolean {
        return false;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("HighScores: ");
        stringBuffer.append(this.heading);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(this.orderedHighScoresList.size());
        return stringBuffer.toString();
    }
    }
}

