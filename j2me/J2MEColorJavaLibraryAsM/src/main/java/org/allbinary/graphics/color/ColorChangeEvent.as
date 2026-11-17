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
package org.allbinary.graphics.color {
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class ColorChangeEvent extends AllBinaryEventObject {
        private var basicColor:BasicColor = null;

        // Java field initializers run after the base constructor
        private function initFieldsColorChangeEvent():void {
    this.basicColor = BasicColorFactory.getInstance().WHITE;
        }
    

    public function ColorChangeEvent(anyType:Object) {
        super(anyType);
        this.initFieldsColorChangeEvent();
    }
    

    public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    }
}

