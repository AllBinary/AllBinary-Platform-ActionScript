// Generated Code Do Not Modify
package org.allbinary.graphics.form {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.form.item.ABCustomItem;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;

    public class PaintableForm extends ABCustomForm {
    private static var NULL_PAINTABLE_FORM_value:Object;
    private static var NULL_PAINTABLE_FORM_set:Boolean = false;
    private static function get NULL_PAINTABLE_FORM():Object {
        if (!PaintableForm.NULL_PAINTABLE_FORM_set) {
            PaintableForm.NULL_PAINTABLE_FORM_set = true;
            PaintableForm.NULL_PAINTABLE_FORM_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return PaintableForm.NULL_PAINTABLE_FORM_value;
    }
    private static function set NULL_PAINTABLE_FORM(value:Object):void {
        PaintableForm.NULL_PAINTABLE_FORM_set = true;
        PaintableForm.NULL_PAINTABLE_FORM_value = value;
    }
        public var canvasStrings:CanvasStrings = null;
        public var rectangle:Rectangle = null;
        public var x:int = 0;
        public var y:int = 0;
        public var formType:FormType = null;

        // Java field initializers run after the base constructor
        private function initFieldsPaintableForm():void {
    this.canvasStrings = CanvasStrings.getInstance();
    this.rectangle = RectangleFactory.SINGLETON;
    this.x = 0;
    this.y = 0;
    this.formType = FormTypeFactory.getInstance().NULL_FORM_TYPE;
        }
    

    public static function getNullPaintableForm():PaintableForm {
        if (PaintableForm.NULL_PAINTABLE_FORM == NullUtil.getInstance().NULL_OBJECT) {
            PaintableForm.NULL_PAINTABLE_FORM = new PaintableForm(StringUtil.getInstance().EMPTY_STRING, new Vector.<ABCustomItem>(0), BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (PaintableForm.NULL_PAINTABLE_FORM as PaintableForm);
    }
    

    public function PaintableForm(title:String, items:Vector.<ABCustomItem>, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(title, items, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsPaintableForm();
        this.setSelectedIndex(0);
    }
    

    public function init(...args):void {
        if (args.length == 2) {
            this.init_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo2(rectangle:Rectangle, formType:FormType):void {
        this.rectangle = rectangle;
        var point:GPoint = this.rectangle.getPoint();
        this.x = point.getX();
        this.y = point.getY();
        this.formType = formType;
    }
    

    override public function getWidth():int {
        return this.rectangle.getWidth();
    }
    }
}

