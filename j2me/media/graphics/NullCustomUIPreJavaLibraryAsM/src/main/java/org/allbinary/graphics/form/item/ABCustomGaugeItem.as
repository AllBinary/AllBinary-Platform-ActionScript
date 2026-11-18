// Generated Code Do Not Modify
package org.allbinary.graphics.form.item {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.string.StringUtil;

    public class ABCustomGaugeItem extends ABCustomItem {
    private static var NULL_GAUGE_ITEM_value:ABCustomGaugeItem;
    private static var NULL_GAUGE_ITEM_set:Boolean = false;
    public static function get NULL_GAUGE_ITEM():ABCustomGaugeItem {
        if (!ABCustomGaugeItem.NULL_GAUGE_ITEM_set) {
            ABCustomGaugeItem.NULL_GAUGE_ITEM_set = true;
            ABCustomGaugeItem.NULL_GAUGE_ITEM_value = new ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ABCustomGaugeItem.NULL_GAUGE_ITEM_value;
    }
    

    public function ABCustomGaugeItem(label:String, maxValue:int, initialValue:int, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(label, backgroundBasicColor, foregroundBasicColor);
    }
    }
}

