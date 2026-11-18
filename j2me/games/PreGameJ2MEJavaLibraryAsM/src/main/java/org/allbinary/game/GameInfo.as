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
package org.allbinary.game {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class GameInfo {
    private static var NONE_value:GameInfo;
    private static var NONE_set:Boolean = false;
    public static function get NONE():GameInfo {
        if (!GameInfo.NONE_set) {
            GameInfo.NONE_set = true;
            GameInfo.NONE_value = new GameInfo(GameTypeFactory.getInstance().NONE, GameMode.NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1);
        }
        return GameInfo.NONE_value;
    }
    public static const LEVEL_NAME:String = "LEVEL";
        public var logUtil:LogUtil = null;
        private var gameInfoData:GameInfoData = null;
        private var gameType:GameType = null;
        private var gameMode:GameMode = null;
        private var playerType:PlayerType = null;
        private var highestLevel:int = 0;
        private var currentLevel:int = 0;
        private var NEW_LEVEL:String = null;
        private var SET_CURRENT_LEVEL:String = null;
        private var NEXT_GAME_LEVEL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameInfo():void {
    this.logUtil = LogUtil.getInstance();
    this.gameInfoData = GameInfoData.getInstance();
    
    
    
    this.highestLevel = 0;
    
    this.NEW_LEVEL = "New Level: ";
    this.SET_CURRENT_LEVEL = "setCurrentLevel";
    this.NEXT_GAME_LEVEL = "nextGameLevel";
        }
    

    public function GameInfo(gameType:GameType, gameMode:GameMode, playerType:PlayerType, highestLevel:int, currentLevel:int) {
        super();
        this.initFieldsGameInfo();
        this.gameType = gameType;
        this.gameMode = gameMode;
        this.setHighestLevel(highestLevel);
        this.currentLevel = currentLevel;
        this.playerType = playerType;
    }
    

    public function getGameType():GameType {
        return this.gameType;
    }
    

    public function getGameMode():GameMode {
        return this.gameMode;
    }
    

    public function getPlayerType():PlayerType {
        return this.playerType;
    }
    

    public function getHighestLevel():int {
        return this.highestLevel;
    }
    

    public function setHighestLevel(highestLevel:int):void {
        this.highestLevel = highestLevel;
    }
    

    public function getCurrentLevel():int {
        return this.currentLevel;
    }
    

    public function setCurrentLevel(currentLevel:int):void {
        this.currentLevel = currentLevel;
        this.logUtil.putF(new StringMaker().append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.SET_CURRENT_LEVEL);
    }
    

    public function nextGameLevel():void {
        if (this.getCurrentLevel() < this.getHighestLevel()) {
            this.currentLevel++;
        }
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().NEXT).append(CommonSeps.getInstance().SPACE).append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.NEXT_GAME_LEVEL);
    }
    

    public function previousGameLevel():void {
        if (this.getCurrentLevel() > 1) {
            this.currentLevel--;
        }
    }
    

    public function isLastLevel():Boolean {
        if (this.getCurrentLevel() >= this.getHighestLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    public function toHashtable():ABHashtable {
        var hashtable:ABHashtable = StdUtil.getInstance().createHashtable();
        hashtable.put(this.gameInfoData.GAME_TYPE, this.getGameType().toString());
        hashtable.put(this.gameInfoData.GAME_MODE, this.gameMode.toString());
        hashtable.put(this.gameInfoData.PLAYER_TYPE, this.playerType.toString());
        hashtable.put(this.gameInfoData.HIGHEST_LEVEL, String(this.getHighestLevel()));
        hashtable.put(this.gameInfoData.CURRENT_LEVEL, String(this.currentLevel));
        return hashtable;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        stringBuffer.append(this.gameInfoData.GAME_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.getGameType().toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.GAME_MODE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.gameMode.toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.PLAYER_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(StringUtil.getInstance().toString1(this.playerType));
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.HIGHEST_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.getHighestLevel());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.CURRENT_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.currentLevel);
        return stringBuffer.toString();
    }
    }
}

