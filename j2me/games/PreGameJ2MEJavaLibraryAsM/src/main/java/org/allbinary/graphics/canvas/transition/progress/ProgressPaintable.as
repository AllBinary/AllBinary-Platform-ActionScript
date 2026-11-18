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
package org.allbinary.graphics.canvas.transition.progress {
    import org.allbinary.graphics.paint.Paintable;

    public class ProgressPaintable extends Paintable {
        private var progressCanvas:ProgressCanvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsProgressPaintable():void {
    
        }
    

    public function ProgressPaintable(progressCanvas:ProgressCanvas) {
        super();
        this.initFieldsProgressPaintable();
        this.progressCanvas = progressCanvas;
    }
    

    override public function paint(graphics:Graphics):void {
        this.progressCanvas.paint2(graphics);
    }
    }
}

