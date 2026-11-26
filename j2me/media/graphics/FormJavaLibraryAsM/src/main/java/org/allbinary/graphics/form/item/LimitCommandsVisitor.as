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
package org.allbinary.graphics.form.item {
    import javax.microedition.lcdui.Command;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.form.ScreenInfo;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.util.visitor.Visitor;

    public class LimitCommandsVisitor extends Visitor {
        private var isNotSmallDisplay:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsLimitCommandsVisitor():void {
    
        }
    

    public function LimitCommandsVisitor() {
        super();
        this.initFieldsLimitCommandsVisitor();
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        this.isNotSmallDisplay = (displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_HEIGHT);
    }
    

    override public function visit(...args):* {
        if (args.length == 1) {
            return this.visit_jo1(args[0]);
        }
        return super.visit.apply(this, args);
    }

    private function visit_jo1(anyType:Object):Object {
        var command:Command = (anyType as Command);
        var booleanFactory:BooleanFactory = BooleanFactory.getInstance();
        if (this.isNotSmallDisplay || command.getPriority() == 1 || command == GameCommandsFactory.getInstance().EXIT_COMMAND || command == GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND) {
            return booleanFactory.TRUE;
        } else {
            return booleanFactory.FALSE;
        }
    }
    }
}

