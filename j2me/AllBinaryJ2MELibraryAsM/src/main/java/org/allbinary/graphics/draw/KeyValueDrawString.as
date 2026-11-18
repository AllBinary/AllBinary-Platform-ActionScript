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
package org.allbinary.graphics.draw {
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.logic.string.StringUtil;

    public class KeyValueDrawString implements UpdateMyFontInterface {
        private var myFontProcessor:MyFontProcessor = null;
        private var LABEL:String = null;
        private var labelX:int = 0;
        private var valueX:int = 0;
        private var value:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsKeyValueDrawString():void {
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    
    
    this.valueX = 0;
    this.value = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function KeyValueDrawString(label:String, x:int) {
        super();
        this.initFieldsKeyValueDrawString();
        this.LABEL = label;
        this.labelX = x;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var labelWidth:int = graphics.getFont().stringWidth(this.LABEL) - this.LABEL.length;
        this.valueX = int(labelWidth + this.labelX);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function paint(graphics:Graphics, y:int):void {
        this.myFontProcessor.process(graphics);
        graphics.drawString(this.LABEL, this.labelX, y, 0);
        graphics.drawString(this.value, this.valueX, y, 0);
    }
    

    public function update(value:String):void {
        this.value = value;
    }
    }
}

