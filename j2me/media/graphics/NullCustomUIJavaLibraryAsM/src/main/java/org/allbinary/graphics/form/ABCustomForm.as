// Generated Code Do Not Modify
package org.allbinary.graphics.form {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.form.item.ABCustomItem;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class ABCustomForm extends CustomScreen {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsABCustomForm():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
        }
    

    public function ABCustomForm(title:String, items:Vector.<ABCustomItem>, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super();
        this.initFieldsABCustomForm();
    }
    

    public function getAllitems():Vector.<ABCustomItem> {
        return new Vector.<ABCustomItem>(0);
    }
    

    public function size():int {
        return 0;
    }
    

    public function setSelectedIndex(index:int):void {
    }
    

    public function getSelectedIndex():int {
        return 0;
    }
    

    public function deleteAll():void {
    }
    

    public function delete_(itemNum:int):void {
    }
    

    public function append(item:ABCustomItem):int {
        return -1;
    }
    

    public function insert(itemNum:int, item:ABCustomItem):void {
    }
    

    public function set_(itemNum:int, item:ABCustomItem):void {
    }
    

    public function get_(itemNum:int):ABCustomItem {
        return ABCustomItem.getNullInstance();
    }
    

    public function getWidth():int {
        throw new JException("RuntimeException", "");
    }
    

    public function paint(graphics:Graphics):void {
    }
    

    public function getTitle():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    }
}

