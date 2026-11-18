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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import java.lang.JRunnable;

    public class CommandRunnable implements JRunnable {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var commandFormInputProcessor:CommandFormInputProcessor = null;
        private var command:Command = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommandRunnable():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
        }
    

    public function CommandRunnable(commandFormInputProcessor:CommandFormInputProcessor, command:Command) {
        super();
        this.initFieldsCommandRunnable();
        this.commandFormInputProcessor = commandFormInputProcessor;
        this.command = command;
    }
    

    public function run():void {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            var canvas:MyCanvas = this.commandFormInputProcessor.getCanvas();
            var commandListener:CommandListener = canvas.getCustomCommandListener();
            commandListener.commandAction(this.command, canvas);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
        }
    }
    }
}

