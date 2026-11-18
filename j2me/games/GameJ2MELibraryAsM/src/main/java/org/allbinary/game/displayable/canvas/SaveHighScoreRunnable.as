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
    import org.allbinary.game.score.displayable.HighScoreTextBox;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import java.lang.JRunnable;

    public class SaveHighScoreRunnable implements JRunnable {
        private var progressCanvas:ProgressCanvas = null;
        private var isLast:Boolean = false;
        private var textBox:HighScoreTextBox = null;

        // Java field initializers run after the base constructor
        private function initFieldsSaveHighScoreRunnable():void {
    this.progressCanvas = ProgressCanvasFactory.getInstance();
    
    
        }
    

    public function SaveHighScoreRunnable(isLast:Boolean, textBox:HighScoreTextBox) {
        super();
        this.initFieldsSaveHighScoreRunnable();
        this.isLast = isLast;
        this.textBox = textBox;
    }
    

    public function run():void {
        var logUtil:LogUtil = LogUtil.getInstance();
        try {
            if (this.isLast) {
                this.textBox.submit();
            } else {
                this.textBox.saveHighScore();
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, "run", e);
            this.progressCanvas.end();
        }
    }
    }
}

