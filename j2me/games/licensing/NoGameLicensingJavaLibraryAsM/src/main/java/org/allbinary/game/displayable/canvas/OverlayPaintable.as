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
    

    override public function update():void {
        try {
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
        }
    }
    

    override public function paint(graphics:Graphics):void {
    }
    }
}

