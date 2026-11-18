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
    import org.allbinary.graphics.paint.ProcessPaintable;

    public class GameCanvasPaintHelper extends ProcessPaintable {
        private var gameCanvas:AllBinaryGameCanvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameCanvasPaintHelper():void {
    
        }
    

    public function GameCanvasPaintHelper(gameCanvas:AllBinaryGameCanvas) {
        super();
        this.initFieldsGameCanvasPaintHelper();
        this.gameCanvas = gameCanvas;
    }
    

    override public function process():void {
    }
    

    override public function paint(graphics:Graphics):void {
        this.gameCanvas.draw(graphics);
    }
    }
}

