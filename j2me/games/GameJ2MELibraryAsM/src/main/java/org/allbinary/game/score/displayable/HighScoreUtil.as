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
package org.allbinary.game.score.displayable {
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.score.HighScore;
    import org.allbinary.game.score.HighScoreNamePersistanceSingleton;
    import org.allbinary.game.score.HighScores;
    import org.allbinary.game.score.HighScoresFactoryInterface;
    import org.allbinary.game.score.HighScoresHelperBaseInterface;
    import org.allbinary.game.score.HighScoresResultsListener;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonStrings;

    public class HighScoreUtil implements HighScoresResultsListener {
    private static var SUBMIT_TEXTBOX_COMMAND_value:Command;
    private static var SUBMIT_TEXTBOX_COMMAND_set:Boolean = false;
    public static function get SUBMIT_TEXTBOX_COMMAND():Command {
        if (!HighScoreUtil.SUBMIT_TEXTBOX_COMMAND_set) {
            HighScoreUtil.SUBMIT_TEXTBOX_COMMAND_set = true;
            HighScoreUtil.SUBMIT_TEXTBOX_COMMAND_value = new Command("Submit", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return HighScoreUtil.SUBMIT_TEXTBOX_COMMAND_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var highScoresFactoryInterface:HighScoresFactoryInterface = null;
        private var highScoresArray:Vector.<HighScores> = null;
        private var highScore:HighScore = null;
        private var abeClientInformation:AbeClientInformationInterface = null;
        private var gameInfo:GameInfo = null;
        private var highScoresHelper:HighScoresHelperBaseInterface = null;
        private var firstTime:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoreUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    
    this.firstTime = true;
        }
    

    public function HighScoreUtil(highScoresFactoryInterface:HighScoresFactoryInterface, highScoresHelper:HighScoresHelperBaseInterface, abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo, cmdListener:CommandListener, name:String, highScore:HighScore) {
        super();
        this.initFieldsHighScoreUtil();
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresHelper = highScoresHelper;
        this.highScoresArray = this.highScoresHelper.getHighScoresArray();
        this.highScore = highScore;
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
    }
    

    public function setHighScoresArray(highScoresArray:Vector.<HighScores>):void {
        this.highScoresArray = highScoresArray;
        this.firstTime = false;
        this.saveHighScore();
    }
    

    public function update(name:String):void {
        HighScoreNamePersistanceSingleton.getInstance().save(this.abeClientInformation, this.gameInfo, name);
        this.highScore.setName(name);
    }
    

    public function saveHighScore():void {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(StringUtil.getInstance().toString1(this.highScore)).toString(), this, "saveHighScore");
        var size:int = this.highScoresArray.length;
        if (this.firstTime && size == 0) {
            this.logUtil.putF("Games canvas did not give us any HighScores", this, "saveHighScore");
            this.highScoresFactoryInterface.fetchHighScores(this.gameInfo, this);
            return;
        }
        var highScores:HighScores = null;
        var highScoresAsString:String = null;
        for (var index:int = 0; index < size; index++) {
            highScores = this.highScoresArray[index];
            highScores.addHighScore(this.highScore);
            highScoresAsString = highScores.toString();
            this.logUtil.putF(new StringMaker().append("Added/Adding Score: ").append(highScoresAsString).toString(), this, "saveHighScore");
        }
        this.highScoresHelper.setHighScoresArray(this.highScoresArray);
    }
    

    public function submit(myCanvas:MyCanvas):void {
        var commandListener:CommandListener = myCanvas.getCustomCommandListener();
        commandListener.commandAction(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND, myCanvas);
    }
    }
}

