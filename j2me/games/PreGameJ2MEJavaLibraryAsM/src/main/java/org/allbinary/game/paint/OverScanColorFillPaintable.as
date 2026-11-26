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
package org.allbinary.game.paint {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColor;

    public class OverScanColorFillPaintable extends ColorFillPaintable {
    

    public function OverScanColorFillPaintable(basicColor:BasicColor) {
        super(basicColor);
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        graphics.setColor(this.colorP);
        graphics.fillRect(-graphics.getClipX(), -graphics.getClipY(), int(this.displayInfoSingleton.getLastWidth() + (int(graphics.getClipX() * 2))), int(this.displayInfoSingleton.getLastHeight() + (int(graphics.getClipY() * 2))));
    }
    }
}

