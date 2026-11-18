// Generated Code Do Not Modify
package org.allbinary.graphics.form.item {
    import org.allbinary.graphics.color.BasicColor;

    public class ABTextItem extends CustomCustomItem implements ABCustomItemInterface {
    

    public function ABTextItem(label:String, layout:int, altText:String, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(label, backgroundBasicColor, foregroundBasicColor);
    }
    

    public function keyPressed(keyCode:int):void {
    }
    

    override public function paintUnselected(graphics:Graphics, x:int, y:int):void {
    }
    

    public function getLabelStringComponent():ABStringComponent {
        return ABStringComponent.NULL_STRING_COMPONENT;
    }
    

    override public function getMinimumWidth():int {
        return super.getMinimumWidth();
    }
    

    override public function getMinimumHeight():int {
        return super.getMinimumHeight();
    }
    

    override public function getLabel():String {
        return super.getLabel();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        super.paintXY(graphics, x, y);
    }
    }
}

