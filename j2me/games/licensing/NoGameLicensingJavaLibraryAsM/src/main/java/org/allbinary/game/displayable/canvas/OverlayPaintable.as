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
    import org.allbinary.graphics.paint.InitUpdatePaintable;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class OverlayPaintable extends InitUpdatePaintable {
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsOverlayPaintable():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public function OverlayPaintable() {
        super();
        this.initFieldsOverlayPaintable();
    }
    

    override public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        super.update.apply(this, args);
    }

    private function update_jo0():void {
        try {
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
        }
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
    }
    }
}

