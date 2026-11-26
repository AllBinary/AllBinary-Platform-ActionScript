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
package org.allbinary.graphics.displayable.command {
    import javax.microedition.lcdui.Command;
    import org.allbinary.logic.string.StringUtil;

    public class MyCommandsFactory {
    private static var instance_value:MyCommandsFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():MyCommandsFactory {
        if (!MyCommandsFactory.instance_set) {
            MyCommandsFactory.instance_set = true;
            MyCommandsFactory.instance_value = new MyCommandsFactory();
        }
        return MyCommandsFactory.instance_value;
    }
        public var NO_COMMAND:Command = null;
        public var GAUGE_CHANGE:Command = null;
        public var SET_DISPLAYABLE:Command = null;
        public var PAUSE_COMMAND:Command = null;
        public var RESUME_COMMAND:Command = null;

        // Java field initializers run after the base constructor
        private function initFieldsMyCommandsFactory():void {
    this.NO_COMMAND = new Command(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, -1, -1);
    this.GAUGE_CHANGE = new Command("GAUGE_CHANGE", StringUtil.getInstance().EMPTY_STRING, Command.ITEM, 1);
    this.SET_DISPLAYABLE = new Command("Display", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.PAUSE_COMMAND = new Command("Pause", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    this.RESUME_COMMAND = new Command("Resume", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
        }
    

    public static function getInstance():MyCommandsFactory {
        return MyCommandsFactory.instance;
    }
    

    public function MyCommandsFactory() {
        super();
        this.initFieldsMyCommandsFactory();
    }
    }
}

