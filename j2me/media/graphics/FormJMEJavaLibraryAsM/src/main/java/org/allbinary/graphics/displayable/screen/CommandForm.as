/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2002 AllBinary 
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
package org.allbinary.graphics.displayable.screen {
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Form;
    import javax.microedition.lcdui.NullCommandListener;
    import org.allbinary.canvas.Processor;
    import org.allbinary.game.displayable.canvas.MenuListener;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.displayable.command.MyCommandInterface;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABStack;

    public class CommandForm extends Form implements MyCommandInterface, MenuListener {
    private static var NULL_COMMAND_FORM_value:Object;
    private static var NULL_COMMAND_FORM_set:Boolean = false;
    private static function get NULL_COMMAND_FORM():Object {
        if (!CommandForm.NULL_COMMAND_FORM_set) {
            CommandForm.NULL_COMMAND_FORM_set = true;
            CommandForm.NULL_COMMAND_FORM_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return CommandForm.NULL_COMMAND_FORM_value;
    }
    private static function set NULL_COMMAND_FORM(value:Object):void {
        CommandForm.NULL_COMMAND_FORM_set = true;
        CommandForm.NULL_COMMAND_FORM_value = value;
    }
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var repaintProcessor:Processor = null;
        private var commandStack:ABStack = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommandForm():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this);
    
        }
    

    public static function getNullCommandForm():CommandForm {
        if (CommandForm.NULL_COMMAND_FORM == NullUtil.getInstance().NULL_OBJECT) {
            CommandForm.NULL_COMMAND_FORM = new CommandForm(NullCommandListener.NULL_COMMAND_LISTENER, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (CommandForm.NULL_COMMAND_FORM as CommandForm);
    }
    

    public function CommandForm(commandListener:CommandListener, formTitle:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(formTitle);
        this.initFieldsCommandForm();
        this.commandStack = StdUtil.getInstance().createStack();
        try {
            this.repaintProcessor.process();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
        }
    }
    

    public function initCommands(cmdListener:CommandListener):void {
    }
    

    public function open():void {
        this.logUtil.putF(this.commonStrings.START, this, "open");
    }
    

    public function close():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
    }
    

    public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "update");
    }

    private function update_jo0():void {
        this.repaintProcessor.process();
    }
    

    public function getSourceId():int {
        return 0;
    }
    

    override public function addCommand(command:Command):void {
        this.commandStack.push(command);
        super.addCommand(command);
    }
    

    public function removeAllCommands():void {
        var size:int = this.commandStack.size();
        for (var index:int = 0; index < size; index++) {
            super.removeCommand((this.commandStack.pop() as Command));
        }
    }
    }
}

