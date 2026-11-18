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
package org.allbinary.midlet {
    import org.allbinary.canvas.Processor;

    public class MidletExitProcessor extends Processor {
        private var midlet:MIDlet = null;

        // Java field initializers run after the base constructor
        private function initFieldsMidletExitProcessor():void {
    
        }
    

    public function MidletExitProcessor(midlet:MIDlet) {
        super();
        this.initFieldsMidletExitProcessor();
        this.midlet = midlet;
    }
    

    override public function process():void {
        JSystem.exit(0);
    }
    }
}

