// Generated Code Do Not Modify
package org.allbinary.graphics.form.item {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;

    public class ABCustomItem {
    private static var NULL_CUSTOM_ITEM_value:Object;
    private static var NULL_CUSTOM_ITEM_set:Boolean = false;
    public static function get NULL_CUSTOM_ITEM():Object {
        if (!ABCustomItem.NULL_CUSTOM_ITEM_set) {
            ABCustomItem.NULL_CUSTOM_ITEM_set = true;
            ABCustomItem.NULL_CUSTOM_ITEM_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return ABCustomItem.NULL_CUSTOM_ITEM_value;
    }
    

    public static function getNullInstance():ABCustomItem {
        if (ABCustomItem.NULL_CUSTOM_ITEM == NullUtil.getInstance().NULL_OBJECT) {
            ABCustomItem.NULL_CUSTOM_ITEM = new ABCustomItem(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (ABCustomItem.NULL_CUSTOM_ITEM as ABCustomItem);
    }
    

    public function ABCustomItem(label:String, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super();
    }
    

    public function setOwner(owner:Screen):void {
    }
    

    public function paintXY(graphics:Graphics, x:int, y:int):void {
    }
    

    public function paintUnselected(graphics:Graphics, x:int, y:int):void {
    }
    

    public function isFocusable():Boolean {
        return false;
    }
    

    public function getLabel():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function setLabel(label:String):void {
    }
    

    public function getHeight():int {
        return 0;
    }
    

    public function setHeight(height:int):void {
    }
    

    public function getValue():Number {
        return 0.0;
    }
    

    public function setValue(value:Number):void {
    }
    

    public function getMinimumWidth():int {
        return 0;
    }
    

    public function getMinimumHeight():int {
        return 0;
    }
    

    public function preMeasurement(graphics:Graphics):void {
    }
    }
}

