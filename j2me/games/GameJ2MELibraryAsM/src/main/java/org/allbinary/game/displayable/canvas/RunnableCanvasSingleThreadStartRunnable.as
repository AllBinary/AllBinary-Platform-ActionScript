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
    import org.allbinary.canvas.RunnableCanvas;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class RunnableCanvasSingleThreadStartRunnable extends GameRunnable {
        public var logUtil:LogUtil = null;
        private var runnableCanvas:RunnableCanvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsRunnableCanvasSingleThreadStartRunnable():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function RunnableCanvasSingleThreadStartRunnable(demoCanvas:RunnableCanvas) {
        super();
        this.initFieldsRunnableCanvasSingleThreadStartRunnable();
        this.runnableCanvas = demoCanvas;
    }
    

    override public function run():void {
        try {
            this.runnableCanvas.run();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
        }
    }
    

    override public function processLoopSleep():void {
        this.runnableCanvas.processLoopSleep();
    }
    }
}

