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
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;

    public class ColorFillPaintable extends ColorFillBasePaintable {
        public var displayInfoSingleton:DisplayInfoSingleton = null;

        // Java field initializers run after the base constructor
        private function initFieldsColorFillPaintable():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
        }
    

    public function ColorFillPaintable(basicColor:BasicColor) {
        super(basicColor);
        this.initFieldsColorFillPaintable();
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
        graphics.fillRect(0, 0, this.displayInfoSingleton.getLastWidth(), this.displayInfoSingleton.getLastHeight());
    }
    }
}

