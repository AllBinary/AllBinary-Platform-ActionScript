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

    public class HighScoreCommandsFactory extends HighScoreCommandsBaseFactory {
    private static var instance_value:HighScoreCommandsFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():HighScoreCommandsFactory {
        if (!HighScoreCommandsFactory.instance_set) {
            HighScoreCommandsFactory.instance_set = true;
            HighScoreCommandsFactory.instance_value = new HighScoreCommandsFactory();
        }
        return HighScoreCommandsFactory.instance_value;
    }
    

    public static function getInstance():HighScoreCommandsFactory {
        return HighScoreCommandsFactory.instance;
    }
    

    public function HighScoreCommandsFactory() {
        super(new <Command>[HighScoreCommands.getInstance().PERSONAL, HighScoreCommands.getInstance().WORLD]);
    }
    }
}

