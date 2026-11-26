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
package org.allbinary.graphics.displayable.screen {
    import javax.microedition.lcdui.Displayable;
    import org.allbinary.canvas.Processor;

    public class ScreenRepaintProcessor extends Processor {
        private var displayable:Displayable = null;

        // Java field initializers run after the base constructor
        private function initFieldsScreenRepaintProcessor():void {
    
        }
    

    public function ScreenRepaintProcessor(displayable:Displayable) {
        super();
        this.initFieldsScreenRepaintProcessor();
        this.displayable = displayable;
    }
    

    override public function process():void {
        ScreenRepaintUtil.repaint(this.displayable);
    }
    }
}

