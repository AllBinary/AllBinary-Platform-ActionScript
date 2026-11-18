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
package org.allbinary.game.layer {
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.layer.Layer;

    public class PaintableLayerComposite extends Paintable {
        private var paintableArray:Vector.<Layer> = null;

        // Java field initializers run after the base constructor
        private function initFieldsPaintableLayerComposite():void {
    
        }
    

    public function PaintableLayerComposite(paintableArray:Vector.<Layer>) {
        super();
        this.initFieldsPaintableLayerComposite();
        this.paintableArray = paintableArray;
    }
    

    override public function paint(graphics:Graphics):void {
        for (var index:int = this.paintableArray.length; --index >= 0; ) {
            this.paintableArray[index].paint(graphics);
        }
    }
    

    override public function paintThreed(graphics:Graphics):void {
        var paintableInterface:PaintableInterface = null;
        for (var index:int = this.paintableArray.length; --index >= 0; ) {
            paintableInterface = (this.paintableArray[index] as PaintableInterface);
            paintableInterface.paintThreed(graphics);
        }
    }
    }
}

