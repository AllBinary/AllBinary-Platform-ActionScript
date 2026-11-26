// Generated Code Do Not Modify
package org.allbinary.graphics.form.item {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;

    public class CustomCustomItem extends ABCustomItem implements UpdateMyFontInterface {
        public var updateMyFontProcessor:MyFontProcessor = null;
        public var myFontProcessor:MyFontProcessor = null;

        // Java field initializers run after the base constructor
        private function initFieldsCustomCustomItem():void {
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
        }
    

    public function CustomCustomItem(label:String, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(label, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCustomCustomItem();
    }
    

    public function updateMeasurement(graphics:Graphics):void {
    }
    }
}

