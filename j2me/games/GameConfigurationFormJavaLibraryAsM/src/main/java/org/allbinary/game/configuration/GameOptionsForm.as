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
    import javax.microedition.lcdui.Item;
    import javax.microedition.lcdui.TextField;
    import org.allbinary.MIDPUtil;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups;
    import org.allbinary.game.configuration.feature.GameFeatureFormUtil;
    import org.allbinary.game.configuration.feature.GameFeatureItemCommandListener;
    import org.allbinary.game.configuration.feature.GameFeatureItemStateListener;
    import org.allbinary.game.configuration.feature.SensorFeatureFactory;
    import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton;
    import org.allbinary.game.configuration.persistance.KeyValuePersistance;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.command.MyCommandsFactory;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.input.gyro.OrientationData;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.HashtableUtil;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class GameOptionsForm extends CommandForm {
        private var meUtil:MIDPUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameOptionsForm():void {
    this.meUtil = MIDPUtil.getInstance();
        }
    

    public function GameOptionsForm(commandListener:CommandListener, title:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsGameOptionsForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.addConfiguration();
        var gameFeatureFormUtil:GameFeatureFormUtil = GameFeatureFormUtil.getInstance();
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getExclusiveInstance().get_(), ChoiceConstants.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getMultipleInstance().get_(), ChoiceConstants.MULTIPLE);
        this.initCommands(commandListener);
        this.setItemStateListener(new GameFeatureItemStateListener(this));
        this.addTextFieldsIfSimulated();
    }
    

    public function closeClientInformation(abeClientInformation:AbeClientInformationInterface):void {
        super.close();
        this.save(abeClientInformation);
    }
    

    private function addTextFieldsIfSimulated():void {
        var key:String = OrientationData.getInstance().ORIENTATION_SENSOR_INPUT;
        var hashtable:ABHashtable = GameFeatureChoiceGroups.getExclusiveInstance().get_();
        if (hashtable != null) {
            var listCanBeNull:Object = hashtable.get_(key);
            if (listCanBeNull != null) {
                var list:BasicArrayList = (listCanBeNull as BasicArrayList);
                if (list.contains(SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)) {
                    this.addTextFields();
                }
            }
        }
    }
    

    private function addTextFields():void {
        var hashtable:ABHashtable = GameConfigurationTextInput.getHashtable();
        var size:int = hashtable.size();
        var objectArray:Vector.<Object> = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        var gameConfigurationTextInput:GameConfigurationTextInput = null;
        var textField:TextField = null;
        for (var index:int = 0; index < size; index++) {
            gameConfigurationTextInput = (hashtable.get_((objectArray[index] as Object)) as GameConfigurationTextInput);
            textField = new TextField(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField.ANY);
            this.meUtil.appendItem(this, textField);
        }
    }
    

    private function addConfiguration():void {
        var METHOD_NAME:String = "addConfiguration";
        var NAME:String = "Name: ";
        var list:BasicArrayList = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList();
        var GAUGE_CHANGE:Command = MyCommandsFactory.getInstance().GAUGE_CHANGE;
        var stringMaker:StringMaker = new StringMaker();
        var size:int = list.size();
        var gameConfiguration:GameConfiguration = null;
        var gauge:GameConfigurationGauge = null;
        for (var index:int = 0; index < size; index++) {
            gameConfiguration = (list.objectArray[index] as GameConfiguration);
            stringMaker.delete_(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(NAME).append(gameConfiguration.toString()).toString(), this, METHOD_NAME);
            gauge = new GameConfigurationGauge(gameConfiguration);
            gauge.setDefaultCommand(GAUGE_CHANGE);
            gauge.setItemCommandListener(new GameFeatureItemCommandListener(this));
            this.meUtil.appendItem(this, gauge);
        }
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_OPTIONS);
        this.addCommand(gameCommandsFactory.DEFAULT_OPTIONS);
        this.setCommandListener(cmdListener);
    }
    

    public function save(...args):void {
        if (args.length == 1) {
            this.save_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "save");
    }

    private function save_jo1(abeClientInformation:AbeClientInformationInterface):void {
        var size:int = this.size();
        var item:Item = null;
        for (var index:int = 0; index < size; index++) {
            item = this.get_(index);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().update((item as GameConfigurationGauge));
            } else if ((item is TextField)) {
                GameConfigurationTextInput.update((item as TextField));
            }
        }
        GameConfigurationUtil.getInstance().updateCompetitionValue();
        var hashtable:ABHashtable = StdUtil.getInstance().createHashtable();
        var SCALE:GameConfiguration = GameConfigurationCentral.getInstance().SCALE;
        hashtable.put(SCALE.getName(), String(SCALE.getValue().intValue()));
        var keyValuePersistance:KeyValuePersistance = GameConfigurationPersistanceSingleton.getInstance();
        keyValuePersistance.clear();
        keyValuePersistance.loadAll(abeClientInformation);
        var list:BasicArrayList = keyValuePersistance.getIds();
        keyValuePersistance.save(abeClientInformation, hashtable);
        var size2:int = list.size();
        var integer:* = null;
        for (index = 0; index < size2; index++) {
            integer = (list.objectArray[index] as *);
            keyValuePersistance.delete_(abeClientInformation, int(integer));
        }
    }
    }
}

