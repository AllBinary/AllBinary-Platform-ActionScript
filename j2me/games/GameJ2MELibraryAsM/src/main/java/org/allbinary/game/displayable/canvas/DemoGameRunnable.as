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
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;

    public class DemoGameRunnable extends GameRunnable {
        public var logUtil:LogUtil = null;
        private var demoCanvas:DemoCanvas = null;
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsDemoGameRunnable():void {
    this.logUtil = LogUtil.getInstance();
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
        }
    

    public function DemoGameRunnable(demoCanvas:DemoCanvas) {
        super();
        this.initFieldsDemoGameRunnable();
        this.demoCanvas = demoCanvas;
    }
    

    override public function run():void {
        try {
            this.demoCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper.setStartTime());
            this.demoCanvas.processGame();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
        }
    }
    

    override public function processLoopSleep():void {
        this.demoCanvas.processLoopSleep();
    }
    }
}

