// Generated Code Do Not Modify
package org.allbinary.graphics.form.item {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.visitor.Visitor;

    public class ABTextFieldItem extends ABTextItem {
        private var font:Font = null;

        // Java field initializers run after the base constructor
        private function initFieldsABTextFieldItem():void {
    
        }
    

    public function ABTextFieldItem(canvas:Canvas, visitor:Visitor, label:String, value:String, maxSize:int, layout:int, altText:String, font:Font, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(label, layout, altText, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsABTextFieldItem();
        this.font = font;
    }
    

    override public function getLabel():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    override public function setLabel(label:String):void {
    }
    

    public function getString():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function setString(string:String):void {
    }
    

    public function setFocus(state:Boolean):void {
    }
    

    public function getFontHeight():int {
        return this.font.getHeight();
    }
    

    public function setBackgroundBasicColorP(basicColor:BasicColor):void {
    }
    

    public function setForegroundBasicColorP(basicColor:BasicColor):void {
    }
    }
}

