// Generated Code Do Not Modify
package org.allbinary.graphics.form.item {
    import org.allbinary.graphics.color.BasicColor;

    public class ABCustomImageItem extends ABCustomItem {
        public var yOffset:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsABCustomImageItem():void {
    this.yOffset = 0;
        }
    

    public function ABCustomImageItem(label:String, image:Image, layout:int, altText:String, basicColor:BasicColor, yOffset:int) {
        super(label, basicColor, basicColor);
        this.initFieldsABCustomImageItem();
    }
    

    public function getImage():Image {
        return NullImage.NULL_IMAGE;
    }
    }
}

