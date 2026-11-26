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
    import javax.microedition.lcdui.Canvas;
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.Image;
    import javax.microedition.lcdui.NullCanvas;
    import javax.microedition.lcdui.NullImage;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.graphics.paint.ProcessPaintable;
    import org.allbinary.util.CircularIndexUtil;

    public class BufferedGameCanvasPaintHelper extends ProcessPaintable {
    private static const MAX_IMAGES:int = 4;
        private var gameCanvas:Canvas = null;
        private var offScreenImage:Vector.<Image> = null;
        private var previousImage:Image = null;
        private var circularIndexUtil:CircularIndexUtil = null;
        private var drawCircularIndexUtil:CircularIndexUtil = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBufferedGameCanvasPaintHelper():void {
    this.gameCanvas = NullCanvas.NULL_CANVAS;
    this.offScreenImage = new Vector.<Image>(BufferedGameCanvasPaintHelper.MAX_IMAGES);
    this.previousImage = NullImage.NULL_IMAGE;
    this.circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper.MAX_IMAGES);
    this.drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(int(BufferedGameCanvasPaintHelper.MAX_IMAGES - 1), BufferedGameCanvasPaintHelper.MAX_IMAGES);
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function BufferedGameCanvasPaintHelper(gameCanvas:AllBinaryGameCanvas) {
        super();
        this.initFieldsBufferedGameCanvasPaintHelper();
        throw new JException("Exception", "No Longer Used");
    }
    

    override public function process(...args):void {
        if (args.length == 0) {
            this.process_jo0();
            return;
        }
        super.process.apply(this, args);
    }

    private function process_jo0():void {
        var myCanvas:MyCanvas = ((this.gameCanvas as MyCanvas));
        myCanvas.draw(this.offScreenImage[this.circularIndexUtil.getIndex()].getGraphics());
        this.circularIndexUtil.next();
        this.drawCircularIndexUtil.next();
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.previousImage = this.offScreenImage[this.drawCircularIndexUtil.getIndex()];
        graphics.drawImage(this.previousImage, 0, 0, this.anchor);
    }
    }
}

