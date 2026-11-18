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
    import org.allbinary.canvas.Processor;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class StartIntermissionProcessor extends Processor {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var gameCanvas:AllBinaryGameCanvas = null;
        private var WAIT:Number = 0;

        // Java field initializers run after the base constructor
        private function initFieldsStartIntermissionProcessor():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    this.WAIT = 5000;
        }
    

    public function StartIntermissionProcessor(gameCanvas:AllBinaryGameCanvas) {
        super();
        this.initFieldsStartIntermissionProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    override public function process():void {
        if (this.gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(this.WAIT)) {
            this.logUtil.putF("Intermission End", this, this.commonStrings.PROCESS);
            this.gameCanvas.getStartIntermissionInterface().setEnabled(false);
        }
    }
    }
}

