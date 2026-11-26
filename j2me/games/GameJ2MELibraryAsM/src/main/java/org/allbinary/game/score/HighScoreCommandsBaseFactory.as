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
    import javax.microedition.lcdui.Command;
    import org.allbinary.logic.communication.log.LogUtil;

    public class HighScoreCommandsBaseFactory {
        public var logUtil:LogUtil = null;
        public var HIGH_SCORE_COMMANDS:Vector.<Command> = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoreCommandsBaseFactory():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function HighScoreCommandsBaseFactory(HIGH_SCORE_COMMANDS:Vector.<Command>) {
        super();
        this.initFieldsHighScoreCommandsBaseFactory();
        this.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS;
    }
    

    public function isHighScoreCommand(command:Command):Boolean {
        for (var index:int = int(this.HIGH_SCORE_COMMANDS.length - 1); index >= 0; index--) {
            if (command === this.HIGH_SCORE_COMMANDS[index]) {
                return true;
            }
        }
        return false;
    }
    

    public function getIndex(command:Command):int {
        for (var index:int = int(this.HIGH_SCORE_COMMANDS.length - 1); index >= 0; index--) {
            if (command === this.HIGH_SCORE_COMMANDS[index]) {
                return index;
            }
        }
        throw new JException("Exception", "No Such Command");
    }
    }
}

