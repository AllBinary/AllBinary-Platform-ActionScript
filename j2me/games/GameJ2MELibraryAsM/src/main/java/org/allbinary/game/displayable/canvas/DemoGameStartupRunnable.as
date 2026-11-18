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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.thread.ABRunnable;

    public class DemoGameStartupRunnable extends ABRunnable {
    public static const TYPE:int = 4;
        public var logUtil:LogUtil = null;
        private var demoCanvas:DemoCanvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsDemoGameStartupRunnable():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function DemoGameStartupRunnable(demoCanvas:DemoCanvas) {
        super();
        this.initFieldsDemoGameStartupRunnable();
        this.demoCanvas = demoCanvas;
    }
    

    override public function run():void {
        try {
            this.setRunning(true);
            this.demoCanvas.stopGameDemo();
            this.demoCanvas.create();
            this.demoCanvas.start();
            this.setRunning(false);
        } catch (e:*) {
            this.setRunning(false);
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
        }
    }
    

    override public function getType():int {
        return DemoGameStartupRunnable.TYPE;
    }
    }
}

