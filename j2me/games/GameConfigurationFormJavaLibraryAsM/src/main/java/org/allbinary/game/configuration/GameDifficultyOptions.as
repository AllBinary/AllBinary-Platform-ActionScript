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
    import javax.microedition.lcdui.ChoiceGroup;
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.NullImage;
    import org.allbinary.MIDPUtil;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.persistance.GameDifficultyFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JInteger;

    public class GameDifficultyOptions extends CommandForm {
        private var meUtil:MIDPUtil = null;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameDifficultyOptions():void {
    this.meUtil = MIDPUtil.getInstance();
    
        }
    

    public function GameDifficultyOptions(commandListener:CommandListener, title:String, list:BasicArrayList, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsGameDifficultyOptions();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.list = list;
        this.update();
        this.initCommands(commandListener);
        var gameDifficultyFactory:GameDifficultyFactory = GameDifficultyFactory.getInstance();
        this.setSelectedId(gameDifficultyFactory.getLevel());
    }
    

    override public function open():void {
        super.open();
    }
    

    override public function close():void {
        super.close();
        this.save();
    }
    

    public function save(...args):void {
        if (args.length == 0) {
            this.save_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "save");
    }

    private function save_jo0():void {
        var gameDifficultyFactory:GameDifficultyFactory = GameDifficultyFactory.getInstance();
        gameDifficultyFactory.setLevel(this.getSelectedId());
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    override public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        super.update.apply(this, args);
    }

    private function update_jo0():void {
        this.deleteAll();
        this.add(this.list, "Difficulty", ChoiceConstants.EXCLUSIVE);
        super.update();
    }
    

    private function add(list:BasicArrayList, name:String, option:int):void {
        var choiceGroup:ChoiceGroup = this.getChoiceGroup(list, name, option);
        if (list.size() > 0) {
            choiceGroup.setSelectedIndex(0, true);
        }
        this.meUtil.appendItem(this, choiceGroup);
    }
    

    private function getChoiceGroup(list:BasicArrayList, name:String, option:int):ChoiceGroup {
        var METHOD_NAME:String = "addChoiceGroup";
        var NAME:String = "Adding Choice: ";
        var choiceGroup:ChoiceGroup = new ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        var size:int = list.size();
        var anyType:Object = null;
        for (var index:int = 0; index < size; index++) {
            anyType = list.objectArray[index];
            this.logUtil.putF(new StringMaker().append(NAME).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    public function setSelectedId(id:int):void {
        var choiceGroup:ChoiceGroup = (this.get_(0) as ChoiceGroup);
        choiceGroup.setSelectedIndex(id, true);
    }
    

    public function getSelectedId():int {
        var choiceGroup:ChoiceGroup = (this.get_(0) as ChoiceGroup);
        return choiceGroup.getSelectedIndex();
    }
    

    public function getSelectedText():int {
        var choiceGroup:ChoiceGroup = (this.get_(0) as ChoiceGroup);
        var value:int = int(int(parseInt(choiceGroup.getString(choiceGroup.getSelectedIndex()))));
        return value;
    }
    }
}

