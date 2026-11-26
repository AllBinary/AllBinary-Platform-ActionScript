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
    import javax.microedition.lcdui.TextField;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.ABHashtable;

    public class GameConfigurationTextInput {
    private static var hashtable_value:ABHashtable;
    private static var hashtable_set:Boolean = false;
    private static function get hashtable():ABHashtable {
        if (!GameConfigurationTextInput.hashtable_set) {
            GameConfigurationTextInput.hashtable_set = true;
            GameConfigurationTextInput.hashtable_value = StdUtil.getInstance().createHashtable();
        }
        return GameConfigurationTextInput.hashtable_value;
    }
    private static function set hashtable(value:ABHashtable):void {
        GameConfigurationTextInput.hashtable_set = true;
        GameConfigurationTextInput.hashtable_value = value;
    }
    private static var SIMULATOR_IP_value:GameConfigurationTextInput;
    private static var SIMULATOR_IP_set:Boolean = false;
    public static function get SIMULATOR_IP():GameConfigurationTextInput {
        if (!GameConfigurationTextInput.SIMULATOR_IP_set) {
            GameConfigurationTextInput.SIMULATOR_IP_set = true;
            GameConfigurationTextInput.SIMULATOR_IP_value = new GameConfigurationTextInput("IP: ", "192.168.1.3");
        }
        return GameConfigurationTextInput.SIMULATOR_IP_value;
    }
    public static function set SIMULATOR_IP(value:GameConfigurationTextInput):void {
        GameConfigurationTextInput.SIMULATOR_IP_set = true;
        GameConfigurationTextInput.SIMULATOR_IP_value = value;
    }
    private static var SIMULATOR_PORT_value:GameConfigurationTextInput;
    private static var SIMULATOR_PORT_set:Boolean = false;
    public static function get SIMULATOR_PORT():GameConfigurationTextInput {
        if (!GameConfigurationTextInput.SIMULATOR_PORT_set) {
            GameConfigurationTextInput.SIMULATOR_PORT_set = true;
            GameConfigurationTextInput.SIMULATOR_PORT_value = new GameConfigurationTextInput("Port: ", "8010");
        }
        return GameConfigurationTextInput.SIMULATOR_PORT_value;
    }
    public static function set SIMULATOR_PORT(value:GameConfigurationTextInput):void {
        GameConfigurationTextInput.SIMULATOR_PORT_set = true;
        GameConfigurationTextInput.SIMULATOR_PORT_value = value;
    }
        private var label:String = null;
        private var text:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameConfigurationTextInput():void {
    this.label = StringUtil.getInstance().EMPTY_STRING;
    this.text = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function GameConfigurationTextInput(label:String, text:String) {
        super();
        this.initFieldsGameConfigurationTextInput();
        this.setText(text);
        this.setLabel(label);
        GameConfigurationTextInput.hashtable.put(this.getLabel(), this);
    }
    

    public static function update(textField:TextField):void {
        var anyType:Object = (textField.getLabel() as Object);
        var gameConfigurationTextInput:GameConfigurationTextInput = (GameConfigurationTextInput.hashtable.get_(anyType) as GameConfigurationTextInput);
        gameConfigurationTextInput.setText(textField.getString());
    }
    

    public function setText(text:String):void {
        this.text = text;
    }
    

    public function getText():String {
        return this.text;
    }
    

    public function setLabel(label:String):void {
        this.label = label;
    }
    

    public function getLabel():String {
        return this.label;
    }
    

    public static function getHashtable():ABHashtable {
        return GameConfigurationTextInput.hashtable;
    }
    }
}

