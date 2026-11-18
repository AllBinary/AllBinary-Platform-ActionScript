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
    import org.allbinary.logic.string.StringUtil;

    public class HighScoreCommands {
    private static var instance_value:HighScoreCommands;
    private static var instance_set:Boolean = false;
    private static function get instance():HighScoreCommands {
        if (!HighScoreCommands.instance_set) {
            HighScoreCommands.instance_set = true;
            HighScoreCommands.instance_value = new HighScoreCommands();
        }
        return HighScoreCommands.instance_value;
    }
        public var DISPLAY:Command = null;
        public var PERSONAL:Command = null;
        public var WORLD:Command = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoreCommands():void {
    this.DISPLAY = new Command("Scores", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.PERSONAL = new Command("Personal", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.WORLD = new Command("World", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }

        public function HighScoreCommands() {
            super();
            this.initFieldsHighScoreCommands();
        }
    

    public static function getInstance():HighScoreCommands {
        return HighScoreCommands.instance;
    }
    }
}

