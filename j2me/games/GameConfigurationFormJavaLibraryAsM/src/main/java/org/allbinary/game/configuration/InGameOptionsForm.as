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
package org.allbinary.game.configuration {
    import javax.microedition.lcdui.Choice;
    import javax.microedition.lcdui.ChoiceConstants;
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.CommandListener;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.feature.GameFeatureFormUtil;
    import org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.logic.string.StringUtil;

    public class InGameOptionsForm extends CommandForm {
    private static var DISPLAY_value:Command;
    private static var DISPLAY_set:Boolean = false;
    public static function get DISPLAY():Command {
        if (!InGameOptionsForm.DISPLAY_set) {
            InGameOptionsForm.DISPLAY_set = true;
            InGameOptionsForm.DISPLAY_value = new Command("Options In Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return InGameOptionsForm.DISPLAY_value;
    }
    private static var SAVE_value:Command;
    private static var SAVE_set:Boolean = false;
    public static function get SAVE():Command {
        if (!InGameOptionsForm.SAVE_set) {
            InGameOptionsForm.SAVE_set = true;
            InGameOptionsForm.SAVE_value = new Command("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return InGameOptionsForm.SAVE_value;
    }
    private static var DEFAULT_value:Command;
    private static var DEFAULT_set:Boolean = false;
    public static function get DEFAULT():Command {
        if (!InGameOptionsForm.DEFAULT_set) {
            InGameOptionsForm.DEFAULT_set = true;
            InGameOptionsForm.DEFAULT_value = new Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return InGameOptionsForm.DEFAULT_value;
    }
    

    public function InGameOptionsForm(commandListener:CommandListener, title:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        var gameFeatureFormUtil:GameFeatureFormUtil = GameFeatureFormUtil.getInstance();
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getExclusiveInstance().get_(), ChoiceConstants.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getMultipleInstance().get_(), ChoiceConstants.MULTIPLE);
        this.initCommands(commandListener);
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.addCommand(InGameOptionsForm.DEFAULT);
        this.setCommandListener(cmdListener);
    }
    }
}

