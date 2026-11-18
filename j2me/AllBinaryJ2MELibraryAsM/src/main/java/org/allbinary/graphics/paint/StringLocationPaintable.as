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

    public class StringLocationPaintable extends LocationPaintable {
        private var value:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStringLocationPaintable():void {
    
        }
    

    public function StringLocationPaintable(value:String) {
        super();
        this.initFieldsStringLocationPaintable();
        this.value = value;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawString(this.value, x, y, 0);
    }
    }
}

