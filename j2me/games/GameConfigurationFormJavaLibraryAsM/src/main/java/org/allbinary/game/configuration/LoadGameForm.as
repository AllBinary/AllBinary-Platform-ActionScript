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
    import javax.microedition.lcdui.Item;
    import javax.microedition.lcdui.NullImage;
    import javax.microedition.lcdui.StringItem;
    import org.allbinary.MIDPUtil;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.persistance.GamePersistanceSingleton;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JInteger;

    public class LoadGameForm extends CommandForm {
        private var meUtil:MIDPUtil = null;
        private var areChoices:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsLoadGameForm():void {
    this.meUtil = MIDPUtil.getInstance();
    this.areChoices = false;
        }
    

    public function LoadGameForm(commandListener:CommandListener, title:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsLoadGameForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.update();
        this.initCommands(commandListener);
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.LOAD_FILE);
        this.addCommand(gameCommandsFactory.DELETE_FILE);
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
        var list:BasicArrayList = GamePersistanceSingleton.getInstance().getIds();
        this.deleteAll();
        if (list.size() > 0) {
            this.add(list, "Select A Saved Game", ChoiceConstants.EXCLUSIVE);
            this.areChoices = true;
        } else {
            this.meUtil.appendItem(this, new StringItem("No Saved Games", StringUtil.getInstance().EMPTY_STRING, Item.PLAIN));
            this.areChoices = false;
        }
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
        var METHOD_NAME:String = "getChoiceGroup";
        var ADDING_CHOICE:String = "Adding Choice: ";
        var choiceGroup:ChoiceGroup = new ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            var anyType:Object = list.objectArray[index];
            this.logUtil.putF(new StringMaker().append(ADDING_CHOICE).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    public function getSelectedId():int {
        if (this.areChoices) {
            var choiceGroup:ChoiceGroup = (this.get_(0) as ChoiceGroup);
            return choiceGroup.getSelectedIndex();
        } else {
            return -1;
        }
    }
    

    public function getSelectedText():int {
        if (this.areChoices) {
            var choiceGroup:ChoiceGroup = (this.get_(0) as ChoiceGroup);
            var value:int = int(int(parseInt(choiceGroup.getString(choiceGroup.getSelectedIndex()))));
            return value;
        } else {
            return -1;
        }
    }
    }
}

