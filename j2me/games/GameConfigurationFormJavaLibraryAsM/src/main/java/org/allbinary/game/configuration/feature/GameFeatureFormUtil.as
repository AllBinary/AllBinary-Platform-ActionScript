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
package org.allbinary.game.configuration.feature {
    import org.allbinary.MIDPUtil;
    import org.allbinary.game.configuration.GameConfigurationGauge;
    import org.allbinary.game.configuration.GameConfigurationUtil;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.HashtableUtil;

    public class GameFeatureFormUtil {
    private static var instance_value:GameFeatureFormUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():GameFeatureFormUtil {
        if (!GameFeatureFormUtil.instance_set) {
            GameFeatureFormUtil.instance_set = true;
            GameFeatureFormUtil.instance_value = new GameFeatureFormUtil();
        }
        return GameFeatureFormUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var meUtil:MIDPUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameFeatureFormUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.meUtil = MIDPUtil.getInstance();
        }

        public function GameFeatureFormUtil() {
            super();
            this.initFieldsGameFeatureFormUtil();
        }
    

    public static function getInstance():GameFeatureFormUtil {
        return GameFeatureFormUtil.instance;
    }
    

    public function getChoiceGroup(hashtable:ABHashtable, name:String, option:int):ChoiceGroup {
        var stringMaker:StringMaker = new StringMaker();
        var choiceGroup:ChoiceGroup = new ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        var list:BasicArrayList = (hashtable.get_((name as Object)) as BasicArrayList);
        var features:Features = Features.getInstance();
        var ADD_CHOICE:String = ": Adding Choice: ";
        var GET_CHOICE_GROUP:String = "getChoiceGroup";
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            var gameFeature:Feature = (list.objectArray[index] as Feature);
            stringMaker.delete_(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), this, GET_CHOICE_GROUP);
            choiceGroup.append(gameFeature.toString(), NullImage.NULL_IMAGE);
            if (features.isFeature(gameFeature)) {
                choiceGroup.setSelectedIndex(index, true);
            }
        }
        return choiceGroup;
    }
    

    public function addChoiceGroup(form:CommandForm, hashtable:ABHashtable, option:int):void {
        var stringMaker:StringMaker = new StringMaker();
        var ADDING_CHOICE_GROUP:String = "Adding Choice Group: ";
        var ADD_CHOICE_GROUP:String = "addChoiceGroup";
        var size:int = hashtable.size();
        var objectArray:Vector.<Object> = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        var name:String = null;
        for (var index:int = 0; index < size; index++) {
            name = (objectArray[index] as String);
            stringMaker.delete_(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(ADDING_CHOICE_GROUP).append(name).toString(), this, ADD_CHOICE_GROUP);
            this.meUtil.appendItem(form, this.getChoiceGroup(hashtable, name, option));
        }
    }
    

    public function setDefault(form:CommandForm):void {
        var size:int = form.size();
        for (var index:int = 0; index < size; index++) {
            var item:Item = form.get_(index);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().setDefault((item as GameConfigurationGauge));
            } else if ((item is ChoiceGroup)) {
                GameFeatureUtil.getInstance().setDefault((item as ChoiceGroup));
            }
        }
    }
    }
}

