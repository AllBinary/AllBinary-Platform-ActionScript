// Generated Code Do Not Modify
package org.allbinary.graphics.form.item {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;

    public class ABStringComponent {
    private static var NULL_STRING_COMPONENT_value:ABStringComponent;
    private static var NULL_STRING_COMPONENT_set:Boolean = false;
    public static function get NULL_STRING_COMPONENT():ABStringComponent {
        if (!ABStringComponent.NULL_STRING_COMPONENT_set) {
            ABStringComponent.NULL_STRING_COMPONENT_set = true;
            ABStringComponent.NULL_STRING_COMPONENT_value = new ABStringComponent(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ABStringComponent.NULL_STRING_COMPONENT_value;
    }
    

    public function getBackgroundBasicColor():BasicColor {
        return BasicColorFactory.getInstance().WHITE;
    }
    

    public function ABStringComponent(backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super();
    }
    

    public function getForegroundBasicColor():BasicColor {
        return BasicColorFactory.getInstance().WHITE;
    }
    

    public function setForegroundBasicColor(foregroundBasicColor:BasicColor):void {
    }
    }
}

