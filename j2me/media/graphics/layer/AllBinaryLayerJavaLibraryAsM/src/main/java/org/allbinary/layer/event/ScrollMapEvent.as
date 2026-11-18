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
package org.allbinary.layer.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class ScrollMapEvent extends AllBinaryEventObject {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsScrollMapEvent():void {
    this.dx = 0;
    this.dy = 0;
        }
    

    public function ScrollMapEvent(anyType:Object) {
        super(anyType);
        this.initFieldsScrollMapEvent();
    }
    

    public function setDx(dx:int):void {
        this.dx = dx;
    }
    

    public function getDx():int {
        return this.dx;
    }
    

    public function setDy(dy:int):void {
        this.dy = dy;
    }
    

    public function getDy():int {
        return this.dy;
    }
    

    public function setDxDy(dx:int, dy:int):void {
        this.dx = dx;
        this.dy = dy;
    }
    }
}

