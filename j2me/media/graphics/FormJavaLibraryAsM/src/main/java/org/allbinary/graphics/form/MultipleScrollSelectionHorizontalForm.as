// Generated Code Do Not Modify
package org.allbinary.graphics.form {
    import org.allbinary.J2MEUtil;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.form.item.ABCustomItem;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;

    public class MultipleScrollSelectionHorizontalForm extends ScrollSelectionForm implements UpdateMyFontInterface {
        private var rectPaintable:Paintable = null;
        private var multipleScrollSelectionHorizontalFormTypeItemIndexPaintable:ItemIndexPaintable = null;
        private var backgroundColor:int = 0;
        private var myFontProcessor:MyFontProcessor = null;
        private var logged:Boolean = false;
        private var fontHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsMultipleScrollSelectionHorizontalForm():void {
    this.rectPaintable = NullPaintable.getInstance();
    this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance();
    this.backgroundColor = BasicColorFactory.getInstance().TRANSPARENT_GREY.intValue();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.logged = false;
    this.fontHeight = 0;
        }
    

    public static function createForm(title:String, items:Vector.<ABCustomItem>, rectangle:Rectangle, formType:FormType, border:int, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor):ScrollSelectionForm {
        var scrollSelectionForm:ScrollSelectionForm = new MultipleScrollSelectionHorizontalForm(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor);
        scrollSelectionForm.init(rectangle, formType);
        return scrollSelectionForm;
    }
    

    public function MultipleScrollSelectionHorizontalForm(title:String, items:Vector.<ABCustomItem>, formPaintableFactory:ItemPaintableFactory, border:int, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsMultipleScrollSelectionHorizontalForm();
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            this.rectPaintable = new MultipleScrollSelectionFormRectPaintable(this);
        }
    }
    

    public function fillRect(graphics:Graphics):void {
        graphics.setColor(this.backgroundColor);
        graphics.fillRect(this.x, this.y, this.rectangle.getWidth(), this.rectangle.getHeight());
    }
    

    override public function init(rectangle:Rectangle, formType:FormType):void {
        super.init(rectangle, formType);
        var formTypeFactory:FormTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = new MultipleScrollSelectionFormHorizontalPaintable(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = new MultipleScrollSelectionFormVerticalPaintable(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            throw new JException("Exception", formTypeFactory.UNK);
        }
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function paintHorizontal(graphics:Graphics, index:int, item:ABCustomItem, dx:int, dy:int):int {
        var dx2:int = this.paintItem(graphics, index, item, dx, dy) + this.border;
        this.paintable.paint(graphics, index, dx, dy);
        dx = dx2;
        return dx;
    }
    

    public function paintVertical(graphics:Graphics, index:int, item:ABCustomItem, dx:int, dy:int):int {
        this.paintItem(graphics, index, item, dx, dy);
        this.paintable.paint(graphics, index, dx, dy);
        return dx;
    }
    

    override public function getStartIndex():int {
        return this.getSelectedIndex();
    }
    

    override public function paint(graphics:Graphics):void {
        try {
            this.myFontProcessor.process(graphics);
            var start:int = this.getStartIndex();
            var size:int = this.size();
            var dx:int = this.x;
            var dy:int = this.y;
            this.rectPaintable.paint(graphics);
            graphics.drawString(this.getTitle(), this.x, this.y - this.fontHeight, 0);
            var item:ABCustomItem = null;
            for (var index:int = start; index < size; index++) {
                item = this.get_(index);
                if (dx >= this.rectangle.getMaxX()) {
                    if (this.logged) {
                    } else {
                        this.logged = true;
                        PreLogUtil.put(new StringMaker().append("painting beyond maxx: ").appendint(this.rectangle.getMaxX()).toString(), this, this.canvasStrings.PAINT);
                    }
                }
                dx = this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy);
            }
        } catch (e:*) {
            PreLogUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT);
        }
    }
    }
}

