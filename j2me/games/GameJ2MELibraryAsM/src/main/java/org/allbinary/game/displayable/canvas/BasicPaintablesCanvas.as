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
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.paint.ColorFillBasePaintable;
    import org.allbinary.game.paint.ColorFillPaintableFactory;
    import org.allbinary.graphics.paint.Paintable;

    public class BasicPaintablesCanvas extends GameCommandCanvas {
        private var paintableArray:Vector.<Paintable> = null;
        private var colorFillPaintable:ColorFillBasePaintable = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicPaintablesCanvas():void {
    
    
        }
    

    public function BasicPaintablesCanvas(cmdListener:CommandListener, name:String, allBinaryGameLayerManager:AllBinaryGameLayerManager, paintableArray:Vector.<Paintable>) {
        super(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsBasicPaintablesCanvas();
        this.paintableArray = paintableArray;
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    override public function paint(graphics:Graphics):void {
        this.colorFillPaintable.paint(graphics);
        graphics.setColor(this.foregroundColor);
        for (var index:int = int(this.paintableArray.length - 1); index >= 0; index--) {
            this.paintableArray[index].paint(graphics);
        }
        super.paint(graphics);
    }
    }
}

