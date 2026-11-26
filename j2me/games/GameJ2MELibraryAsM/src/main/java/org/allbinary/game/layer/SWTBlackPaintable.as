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
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.graphics.paint.Paintable;

    public class SWTBlackPaintable extends Paintable {
        private var basicSetColorUtil:BasicColorSetUtil = null;
        private var BLACK:BasicColor = null;

        // Java field initializers run after the base constructor
        private function initFieldsSWTBlackPaintable():void {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.BLACK = BasicColorFactory.getInstance().BLACK;
        }

        public function SWTBlackPaintable() {
            super();
            this.initFieldsSWTBlackPaintable();
        }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.basicSetColorUtil.setBasicColorP(graphics, this.BLACK);
    }
    }
}

