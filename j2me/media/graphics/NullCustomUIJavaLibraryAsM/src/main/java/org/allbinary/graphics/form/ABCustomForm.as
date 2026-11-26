// Generated Code Do Not Modify
package org.allbinary.graphics.form {
    import javax.microedition.lcdui.Graphics;
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
    

    public function setSelectedIndex(...args):void {
        if (args.length == 1) {
            this.setSelectedIndex_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "setSelectedIndex");
    }

    private function setSelectedIndex_jo1(index:int):void {
    }
    

    public function getSelectedIndex():int {
        return 0;
    }
    

    public function deleteAll():void {
    }
    

    public function delete_(...args):void {
        if (args.length == 1) {
            this.delete__jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "delete");
    }

    private function delete__jo1(itemNum:int):void {
    }
    

    public function append(...args):int {
        if (args.length == 1) {
            return this.append_jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "append");
    }

    private function append_jo1(item:ABCustomItem):int {
        return -1;
    }
    

    public function insert(...args):void {
        if (args.length == 2) {
            this.insert_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "insert");
    }

    private function insert_jo2(itemNum:int, item:ABCustomItem):void {
    }
    

    public function set_(...args):* {
        if (args.length == 2) {
            return this.set__jo2(args[0], args[1]);
        }
        throw new JException("IllegalArgumentException", "set");
    }

    private function set__jo2(itemNum:int, item:ABCustomItem):void {
    }
    

    public function get_(...args):* {
        if (args.length == 1) {
            return this.get__jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "get");
    }

    private function get__jo1(itemNum:int):ABCustomItem {
        return ABCustomItem.getNullInstance();
    }
    

    public function getWidth():int {
        throw new JException("RuntimeException", "");
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(graphics:Graphics):void {
    }
    

    public function getTitle():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    }
}

