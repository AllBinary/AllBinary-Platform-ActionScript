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
    import java.io.JByteArrayOutputStream;
    import java.io.JDataOutputStream;
    import org.allbinary.game.GameInfo;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import java.lang.JLong;

    public class HighScore {
        private var id:int = 0;
        private var name:String = null;
        private var gameInfo:GameInfo = null;
        private var score:Number = 0;
        private var scoreString:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScore():void {
    
    
    
    
    
        }
    

    public function HighScore(id:int, name:String, gameInfo:GameInfo, score:Number) {
        super();
        this.initFieldsHighScore();
        this.id = id;
        this.name = name;
        this.gameInfo = gameInfo;
        this.score = score;
        this.scoreString = String(this.score);
    }
    

    public function getId():int {
        return this.id;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getScore():Number {
        return this.score;
    }
    

    public function getAsBytes():Vector.<int> {
        var byteArrayOutputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
        var outputStream:DataOutputStream = new DataOutputStream(byteArrayOutputStream);
        outputStream.writeUTF(this.getName());
        outputStream.writeLong(this.getScore());
        return byteArrayOutputStream.toByteArray();
    }
    

    public function getGameInfo():GameInfo {
        return this.gameInfo;
    }
    

    public function getScoreString():String {
        return this.scoreString;
    }
    

    public function setName(name:String):void {
        this.name = name;
    }
    

    public function toString():String {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        return new StringMaker().append(this.name).append(commonSeps.COLON).appendlong(this.score).append(commonSeps.FORWARD_SLASH).append(this.scoreString).toString();
    }
    }
}

