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
    import java.util.JEnumeration;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.EnumerationUtil;
    import org.allbinary.util.HashtableUtil;

    public class GameFeatureUtil {
    private static var instance_value:GameFeatureUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():GameFeatureUtil {
        if (!GameFeatureUtil.instance_set) {
            GameFeatureUtil.instance_set = true;
            GameFeatureUtil.instance_value = new GameFeatureUtil();
        }
        return GameFeatureUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var tsUtil:TsUtil = null;
        private var enumerationUtil:EnumerationUtil = null;
        public var ON_GAME_FEATURE_CHANGE:String = null;
        public var GAME_FEATURE_CHANGED:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameFeatureUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.ON_GAME_FEATURE_CHANGE = "onGameFeatureChange";
    this.GAME_FEATURE_CHANGED = "Game Feature Changed: ";
        }

        public function GameFeatureUtil() {
            super();
            this.initFieldsGameFeatureUtil();
        }
    

    public static function getInstance():GameFeatureUtil {
        return GameFeatureUtil.instance;
    }
    

    public function setDefault(choiceGroup:ChoiceGroup):void {
        var stringBuffer:StringMaker = new StringMaker();
        var METHOD_NAME:String = "setDefault";
        var SELECTED_ARRAY_RETURN:String = "selectedArray_return[";
        var SELECTED_SEP:String = "] = ";
        var selectedArray_return:Vector.<Boolean> = new Vector.<Boolean>(choiceGroup.size());
        var total:int = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        var features:Features = Features.getInstance();
        for (var index:int = 0; index < selectedArray_return.length; index++) {
            var isSelected:Boolean = selectedArray_return[index];
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            var selectedChoiceLabel:String = choiceGroup.getString(index);
            var gameFeature:Feature = Feature.getInstance1(selectedChoiceLabel);
            if (features.isDefault(gameFeature)) {
                features.add(gameFeature);
                choiceGroup.setSelectedIndex(index, true);
            } else {
                features.remove(gameFeature);
                choiceGroup.setSelectedIndex(index, false);
            }
        }
    }
    

    public function updateMultiple(choiceGroup:ChoiceGroup):void {
        var stringBuffer:StringMaker = new StringMaker();
        var METHOD_NAME:String = "updateMultiple";
        var SELECTED_ARRAY_RETURN:String = "selectedArray_return[";
        var SELECTED_SEP:String = "] = ";
        var selectedArray_return:Vector.<Boolean> = new Vector.<Boolean>(choiceGroup.size());
        var total:int = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        var features:Features = Features.getInstance();
        for (var index:int = 0; index < selectedArray_return.length; index++) {
            var isSelected:Boolean = selectedArray_return[index];
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            var selectedChoiceLabel:String = choiceGroup.getString(index);
            var gameFeature:Feature = Feature.getInstance1(selectedChoiceLabel);
            if (!isSelected && features.isFeature(gameFeature)) {
                features.remove(gameFeature);
            } else if (isSelected && !features.isFeature(gameFeature)) {
                features.add(gameFeature);
            }
        }
    }
    

    public function updateExclusiveForChoiceGroup(choiceGroup:ChoiceGroup):void {
        var stringBuffer:StringMaker = new StringMaker();
        var METHOD_NAME:String = "updateExclusive";
        var SELECTED_ARRAY_RETURN:String = "selectedArray_return[";
        var SELECTED_SEP:String = "] = ";
        var selectedArray_return:Vector.<Boolean> = new Vector.<Boolean>(choiceGroup.size());
        var total:int = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Exclusive Total Choices: 1==");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        for (var index:int = 0; index < selectedArray_return.length; index++) {
            var isSelected:Boolean = selectedArray_return[index];
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            if (isSelected) {
                var selectedChoiceLabel:String = choiceGroup.getString(index);
                this.updateExclusive(selectedChoiceLabel);
            }
        }
    }
    

    public function isExclusive(itemLabel:String):Boolean {
        var enumeration:JEnumeration = GameFeatureChoiceGroups.getExclusiveInstance().get_().keys();
        var name:String = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            name = (this.enumerationUtil.nextElement(enumeration) as String);
            if (this.tsUtil.compareTo(itemLabel, name) == 0) {
                return true;
            }
        }
        return false;
    }
    

    private function updateExclusive(selectedChoiceLabel:String):void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), this, "updateExclusive");
        var gameFeature:Feature = Feature.getInstance1(selectedChoiceLabel);
        var hashtable:ABHashtable = GameFeatureChoiceGroups.getExclusiveInstance().get_();
        var objectArray:Vector.<Object> = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        var basicArrayList:BasicArrayList = null;
        var anyType:Object = null;
        var size:int = objectArray.length;
        for (var index:int = 0; index < size; index++) {
            anyType = (objectArray[index] as Object);
            basicArrayList = (hashtable.get_(anyType) as BasicArrayList);
            this.updateExclusiveList(gameFeature, basicArrayList);
        }
    }
    

    public function updateExclusiveList(gameFeature:Feature, list:BasicArrayList):void {
        if (list.contains(gameFeature)) {
            var features:Features = Features.getInstance();
            var addIndex:int = list.indexOf(gameFeature);
            var size:int = list.size();
            for (var index:int = 0; index < size; index++) {
                if (addIndex != index) {
                    features.remove((list.objectArray[index] as Feature));
                } else {
                    features.add((list.objectArray[index] as Feature));
                }
            }
        }
    }
    }
}

