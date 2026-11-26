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
package org.allbinary.graphics.form.item {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColor;

    public class SelectableTextItem extends ABTextItem {
    

    public function SelectableTextItem(label:String, layout:int, altText:String, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(label, layout, altText, backgroundBasicColor, foregroundBasicColor);
    }
    

    override public function isFocusable():Boolean {
        return true;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.myFontProcessor.process(graphics);
        var stringComponent:ABStringComponent = this.getLabelStringComponent();
        if (stringComponent != null) {
            graphics.setColor(stringComponent.getForegroundBasicColor().intValue());
        }
        graphics.drawString(this.getLabel(), int(x + 2), y, 0);
    }
    }
}

