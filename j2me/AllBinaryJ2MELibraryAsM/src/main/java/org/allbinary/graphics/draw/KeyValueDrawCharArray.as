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
    import org.allbinary.logic.java.character.CharArrayFactory;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;

    public class KeyValueDrawCharArray implements UpdateMyFontInterface {
        private var myFontProcessor:MyFontProcessor = null;
        private var LABEL:String = null;
        private var labelX:int = 0;
        private var valueX:int = 0;
        private var value:Vector.<int> = null;
        private var len:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsKeyValueDrawCharArray():void {
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    
    
    this.valueX = 0;
    this.value = CharArrayFactory.getInstance().getZeroCharArray();
    this.len = 0;
        }
    

    public function KeyValueDrawCharArray(label:String, x:int) {
        super();
        this.initFieldsKeyValueDrawCharArray();
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
        graphics.drawChars(this.value, 0, this.len, this.valueX, y, 0);
    }
    

    public function update(value:Vector.<int>, len:int):void {
        this.value = value;
        this.len = len;
    }
    }
}

