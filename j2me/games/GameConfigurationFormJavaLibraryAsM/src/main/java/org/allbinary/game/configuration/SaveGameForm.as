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
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.TextField;
    import org.allbinary.MIDPUtil;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.logic.ABSystemWrapper;
    import java.lang.JLong;

    public class SaveGameForm extends CommandForm {
    private static var FORM_value:CommandForm;
    private static var FORM_set:Boolean = false;
    private static function get FORM():CommandForm {
        if (!SaveGameForm.FORM_set) {
            SaveGameForm.FORM_set = true;
            SaveGameForm.FORM_value = CommandForm.getNullCommandForm();
        }
        return SaveGameForm.FORM_value;
    }
    private static function set FORM(value:CommandForm):void {
        SaveGameForm.FORM_set = true;
        SaveGameForm.FORM_value = value;
    }
        private var meUtil:MIDPUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsSaveGameForm():void {
    this.meUtil = MIDPUtil.getInstance();
        }
    

    public static function createForm(commandListener:CommandListener, title:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor):CommandForm {
        SaveGameForm.FORM = new SaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        return SaveGameForm.FORM;
    }
    

    public static function getInstance():CommandForm {
        return SaveGameForm.FORM;
    }
    

    public function SaveGameForm(commandListener:CommandListener, title:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsSaveGameForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        var timeString:String = String(ABSystemWrapper.getInstance().currentTimeMillis());
        this.meUtil.appendItem(this, new TextField("Name: ", timeString, 30, TextField.ANY));
        this.initCommands(commandListener);
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.SAVE);
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    }
}

