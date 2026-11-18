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
package org.allbinary.game.commands {
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class GameCommandsFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!GameCommandsFactory.instance_set) {
            GameCommandsFactory.instance_set = true;
            GameCommandsFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameCommandsFactory.instance_value;
    }
        public var TOGGLE_FULLSCREEN:Command = null;
        public var TOGGLE_KEYBOARD:Command = null;
        public var SET_MENU_DISPLAYABLE:Command = null;
        public var APPLICATION_UPDATE:Command = null;
        public var DISPLAY_ABOUT:Command = null;
        public var OPEN_WEB_URL:Command = null;
        public var CLOSE_OPTIONS:Command = null;
        public var DISPLAY_OPTIONS:Command = null;
        public var START_TRACE:Command = null;
        public var STOP_TRACE:Command = null;
        public var DEFAULT_OPTIONS:Command = null;
        public var SHOW_GAME_CANVAS:Command = null;
        public var CLOSE_AND_SHOW_GAME_CANVAS:Command = null;
        public var QUIT_COMMAND:Command = null;
        public var RESTART_COMMAND:Command = null;
        public var DISPLAY_SAVE_FORM:Command = null;
        public var SAVE:Command = null;
        public var DISPLAY_LOAD_FORM:Command = null;
        public var LOAD_FILE:Command = null;
        public var DELETE_FILE:Command = null;
        public var EXIT_COMMAND:Command = null;
        public var EXIT_WITHOUT_PROGRESS_COMMAND:Command = null;
        public var START_COMMAND:Command = null;
        public var CONTINUE_COMMAND:Command = null;
        public var SELECT_COMMAND:Command = null;
        public var FEATURE_UPDATE:Command = null;
        public var BUY_COMMAND:Command = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameCommandsFactory():void {
    this.TOGGLE_FULLSCREEN = new Command("Toggle FullScreen", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.TOGGLE_KEYBOARD = new Command("Keyboard", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SET_MENU_DISPLAYABLE = new Command("Set Menu Displayable", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.APPLICATION_UPDATE = new Command(CommonStrings.getInstance().UPDATE, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DISPLAY_ABOUT = new Command(CanvasStrings.getInstance().ABOUT, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.OPEN_WEB_URL = new Command("Open Web URL", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.CLOSE_OPTIONS = new Command("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DISPLAY_OPTIONS = new Command(CanvasStrings.getInstance().OPTIONS, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.START_TRACE = new Command("Start Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.STOP_TRACE = new Command("Stop Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DEFAULT_OPTIONS = new Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SHOW_GAME_CANVAS = new Command("Back to Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.CLOSE_AND_SHOW_GAME_CANVAS = new Command("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.QUIT_COMMAND = new Command("Quit", StringUtil.getInstance().EMPTY_STRING, Command.STOP, 1);
    this.RESTART_COMMAND = new Command("Restart", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    this.DISPLAY_SAVE_FORM = new Command("Save To", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.SAVE = new Command("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.DISPLAY_LOAD_FORM = new Command("Load", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.LOAD_FILE = new Command("Load File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.DELETE_FILE = new Command("Delete File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.EXIT_COMMAND = new Command("Exit", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2);
    this.EXIT_WITHOUT_PROGRESS_COMMAND = new Command("Exit Without Progress", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2);
    this.START_COMMAND = new Command(CommonStrings.getInstance().START, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.CONTINUE_COMMAND = new Command("Continue", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SELECT_COMMAND = new Command("Select", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.FEATURE_UPDATE = new Command("Feature Update", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.BUY_COMMAND = new Command("BUY", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
    

    public static function getInstance():GameCommandsFactory {
        if (GameCommandsFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameCommandsFactory.instance = new GameCommandsFactory();
        }
        return (GameCommandsFactory.instance as GameCommandsFactory);
    }
    

    public function GameCommandsFactory() {
        super();
        this.initFieldsGameCommandsFactory();
    }
    }
}

