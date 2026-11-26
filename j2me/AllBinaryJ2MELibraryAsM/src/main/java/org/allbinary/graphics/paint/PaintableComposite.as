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
package org.allbinary.graphics.paint {
    import javax.microedition.lcdui.Graphics;

    public class PaintableComposite extends Paintable {
        private var paintableArray:Vector.<PaintableInterface> = null;

        // Java field initializers run after the base constructor
        private function initFieldsPaintableComposite():void {
    
        }
    

    public function PaintableComposite(paintableArray:Vector.<PaintableInterface>) {
        super();
        this.initFieldsPaintableComposite();
        this.paintableArray = paintableArray;
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        for (var index:int = int(this.paintableArray.length - 1); index >= 0; index--) {
            this.paintableArray[index].paint(graphics);
        }
    }
    

    override public function paintThreed(graphics:Graphics):void {
        for (var index:int = int(this.paintableArray.length - 1); index >= 0; index--) {
            this.paintableArray[index].paintThreed(graphics);
        }
    }
    }
}

