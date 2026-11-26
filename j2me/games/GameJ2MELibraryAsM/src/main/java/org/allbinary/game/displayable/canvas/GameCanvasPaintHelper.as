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
    import javax.microedition.lcdui.Graphics;
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
    

    override public function process(...args):void {
        if (args.length == 0) {
            this.process_jo0();
            return;
        }
        super.process.apply(this, args);
    }

    private function process_jo0():void {
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.gameCanvas.draw(graphics);
    }
    }
}

