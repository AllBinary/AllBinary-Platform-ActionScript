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
    import org.allbinary.game.configuration.event.GameFeatureEvent;
    import org.allbinary.game.configuration.event.GameFeatureEventHandler;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import java.lang.JInteger;

    public class GameConfiguration {
    private static var MIN_VALUE_value:*;
    private static var MIN_VALUE_set:Boolean = false;
    private static function get MIN_VALUE():* {
        if (!GameConfiguration.MIN_VALUE_set) {
            GameConfiguration.MIN_VALUE_set = true;
            GameConfiguration.MIN_VALUE_value = JInteger.MIN_VALUE;
        }
        return GameConfiguration.MIN_VALUE_value;
    }
        private var name:String = null;
        private var defaultValue:* = null;
        private var value:* = null;
        private var minValue:* = null;
        private var maxValue:* = null;
        private var modifiable:* = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameConfiguration():void {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.defaultValue = SmallIntegerSingletonFactory.getInstance().getAt(0);
    this.value = GameConfiguration.MIN_VALUE;
    this.minValue = this.defaultValue;
    this.maxValue = this.defaultValue;
    this.modifiable = BooleanFactory.getInstance().TRUE;
        }
    

    public function GameConfiguration(name:String, defaultValue:*, minValue:*, maxValue:*) {
        super();
        this.initFieldsGameConfiguration();
        this.setName(name);
        this.setDefaultValue(defaultValue);
        this.value = this.getDefaultValue();
        this.setMinValue(minValue);
        this.setMaxValue(maxValue);
        GameConfigurationSingleton.getInstance().getHashtable().put(this.getName(), this);
    }
    

    public function setValue(value:*):void {
        if (this.value !== value) {
            var oldValue:* = this.value;
            this.value = value;
            GameFeatureEventHandler.getInstance().fireEvent(new GameFeatureEvent(this, new StringMaker().append(this.name).append(" value: from: ").appendint(int(oldValue)).append(" to ").appendint(int(this.value)).toString()));
        }
    }
    

    public function getValue():* {
        return this.value;
    }
    

    public function setMaxValue(maxValue:*):void {
        this.maxValue = maxValue;
    }
    

    public function getMaxValue():* {
        return this.maxValue;
    }
    

    public function setMinValue(minValue:*):void {
        this.minValue = minValue;
    }
    

    public function getMinValue():* {
        return this.minValue;
    }
    

    public function setName(name:String):void {
        this.name = name;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function setDefaultValue(defaultValue:*):void {
        this.defaultValue = defaultValue;
    }
    

    public function getDefaultValue():* {
        return this.defaultValue;
    }
    

    public function setDefault():void {
        this.setValue(this.getDefaultValue());
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.name);
        stringBuffer.append(" Min: ");
        stringBuffer.appendint(int(this.getMinValue()));
        stringBuffer.append(" Max: ");
        stringBuffer.appendint(int(this.getMaxValue()));
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(int(this.getValue()));
        stringBuffer.append(" Default: ");
        stringBuffer.appendint(int(this.getDefaultValue()));
        stringBuffer.append(" Modifiable: ");
        stringBuffer.appendboolean(Boolean(this.isModifiable()));
        return stringBuffer.toString();
    }
    

    public function setModifiable(modifiable:*):void {
        this.modifiable = modifiable;
    }
    

    public function isModifiable():* {
        return this.modifiable;
    }
    }
}

