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
package org.allbinary.game {
    import org.allbinary.logic.string.StringUtil;

    public class GameMode {
    private static var NONE_value:GameMode;
    private static var NONE_set:Boolean = false;
    public static function get NONE():GameMode {
        if (!GameMode.NONE_set) {
            GameMode.NONE_set = true;
            GameMode.NONE_value = new GameMode(StringUtil.getInstance().NULL_STRING);
        }
        return GameMode.NONE_value;
    }
    public static function set NONE(value:GameMode):void {
        GameMode.NONE_set = true;
        GameMode.NONE_value = value;
    }
    private static var SERVER_value:GameMode;
    private static var SERVER_set:Boolean = false;
    public static function get SERVER():GameMode {
        if (!GameMode.SERVER_set) {
            GameMode.SERVER_set = true;
            GameMode.SERVER_value = new GameMode("Server");
        }
        return GameMode.SERVER_value;
    }
    public static function set SERVER(value:GameMode):void {
        GameMode.SERVER_set = true;
        GameMode.SERVER_value = value;
    }
    private static var CLIENT_value:GameMode;
    private static var CLIENT_set:Boolean = false;
    public static function get CLIENT():GameMode {
        if (!GameMode.CLIENT_set) {
            GameMode.CLIENT_set = true;
            GameMode.CLIENT_value = new GameMode("Client");
        }
        return GameMode.CLIENT_value;
    }
    public static function set CLIENT(value:GameMode):void {
        GameMode.CLIENT_set = true;
        GameMode.CLIENT_value = value;
    }
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameMode():void {
    this.name = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function GameMode(name:String) {
        super();
        this.initFieldsGameMode();
        this.setName(name);
    }
    

    private function setName(name:String):void {
        this.name = name;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function toString():String {
        return this.getName();
    }
    }
}

