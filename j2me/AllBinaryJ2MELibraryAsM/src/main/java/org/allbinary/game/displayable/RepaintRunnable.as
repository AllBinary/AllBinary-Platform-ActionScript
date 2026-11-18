/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.game.displayable {
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.thread.ARunnable;

    public class RepaintRunnable extends ARunnable {
        private var canvas:Canvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsRepaintRunnable():void {
    
        }
    

    public function RepaintRunnable(canvas:Canvas) {
        super();
        this.initFieldsRepaintRunnable();
        this.canvas = canvas;
    }
    

    override public function run():void {
        try {
            this.canvas.repaint();
            DisplayInfoSingleton.getInstance().process();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            var logUtil:LogUtil = LogUtil.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
        }
    }
    }
}

