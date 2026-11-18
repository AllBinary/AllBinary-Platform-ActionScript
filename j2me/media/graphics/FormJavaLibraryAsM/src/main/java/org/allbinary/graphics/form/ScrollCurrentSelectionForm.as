/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
package org.allbinary.graphics.form {
    import org.allbinary.canvas.Processor;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.form.item.ABCustomItem;

    public class ScrollCurrentSelectionForm extends ScrollSelectionForm implements UpdateMyFontInterface {
        private var moveForSmallScreen:Boolean = false;
        public var updateMyFontProcessor:MyFontProcessor = null;
        public var myFontProcessor:MyFontProcessor = null;
        public var processor:Processor = null;
        private var preItemIndexDx:ItemIndexDx = null;
        private var dx:int = 0;
        private var dy:int = 0;
        private var maxWidth:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsScrollCurrentSelectionForm():void {
    
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.processor = Processor.getInstance();
    this.preItemIndexDx = ItemIndexDx.getInstance();
    this.dx = 0;
    this.dy = 0;
    this.maxWidth = 0;
        }
    

    public function ScrollCurrentSelectionForm(title:String, items:Vector.<ABCustomItem>, formPaintableFactory:ItemPaintableFactory, border:int, adjustedExtraBorder:int, moveForSmallScreen:Boolean, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsScrollCurrentSelectionForm();
        this.moveForSmallScreen = moveForSmallScreen;
    }
    

    override public function init(rectangle:Rectangle, formType:FormType):void {
        super.init(rectangle, formType);
        var formTypeFactory:FormTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            this.processor = new TempHorizontalFormProcessor(this);
            this.preItemIndexDx = new TempHorizontalItemIndexDx(this);
        } else if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.processor = new HorizontalFormProcessor(this);
            this.preItemIndexDx = new HorizontalItemIndexDx(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.processor = new VerticalFormProcessor(this);
            this.preItemIndexDx = new VerticalItemIndexDx(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            this.logUtil.putF(formTypeFactory.UNK, this, this.commonStrings.INIT);
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function processTempHorizontalForm():void {
        this.dx = this.x - 30 + (this.rectangle.getWidth() >> 1);
        this.dy = this.y;
    }
    

    public function processHorizontalForm():void {
        var size:int = this.size();
        var totalWidth:int = 0;
        var item:ABCustomItem = null;
        for (var index:int = 0; index < size; index++) {
            item = this.get_(index);
            totalWidth += item.getMinimumWidth() + this.border;
        }
        this.dx = this.x + (this.rectangle.getWidth() >> 1) - (totalWidth >> 1);
        this.dy = this.y + (this.rectangle.getHeight() >> 1);
        if (this.moveForSmallScreen) {
            var maxTitleHeight:int = 175;
            if (this.dy < maxTitleHeight) {
                this.dy = maxTitleHeight;
            }
        }
    }
    

    public function processVerticalForm():void {
        var totalHeight:int = 0;
        var size:int = this.size();
        var item2:ABCustomItem = null;
        for (var index:int = 0; index < size; index++) {
            item2 = this.get_(index);
            if (this.maxWidth < item2.getMinimumWidth()) {
                this.maxWidth = item2.getMinimumWidth();
            }
            totalHeight += item2.getMinimumHeight() + this.border;
        }
        this.dx = (int((int(this.rectangle.getWidth() - this.maxWidth)) / 2));
        if (this.size() > 0) {
            this.dy = this.y + (int((int(this.rectangle.getHeight() - totalHeight)) / 2));
            if (this.moveForSmallScreen) {
                var maxTitleHeight:int = 175;
                if (this.dy < maxTitleHeight) {
                    this.dy = maxTitleHeight;
                }
            }
        } else {
            this.dy = this.y;
        }
    }
    

    public function getXTempHorizontalForm(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return this.getDiffX(item);
    }
    

    public function getXHorizontalForm(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return 0;
    }
    

    public function getXVerticalForm(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return this.getDiffX(item) + this.halfBorder;
    }
    

    override public function getDiffX(item:ABCustomItem):int {
        return ((int(this.maxWidth - item.getMinimumWidth())) >> 1);
    }
    

    override public function getDx():int {
        return this.dx;
    }
    

    override public function getDy():int {
        return this.dy;
    }
    

    override public function paint(graphics:Graphics):void {
        try {
            this.processor.process();
            var delta:int = 0;
            var deltaX:int = this.getDx();
            var deltaY:int = this.getDy();
            var size:int = this.size();
            var formTypeFactory:FormTypeFactory = FormTypeFactory.getInstance();
            var item:ABCustomItem = null;
            for (var index:int = 0; index < size; index++) {
                item = this.get_(index);
                var diffX:int = this.preItemIndexDx.getDx(index, item, this.dx, this.dy);
                if (index == this.getSelectedIndex()) {
                    delta = this.paintItem(graphics, index, item, int(deltaX + diffX), deltaY);
                    this.paintable.paint(graphics, index, int(deltaX + diffX), deltaY);
                } else {
                    delta = this.paintUnselectedItem(graphics, index, item, int(deltaX + diffX), deltaY);
                    this.paintable.paint(graphics, index, int(deltaX + diffX), deltaY);
                }
                if (this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
                } else if (this.formType == formTypeFactory.HORIZONTAL_FORM) {
                    deltaX = delta;
                } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
                    deltaY = delta;
                } else {
                    throw new JException("Exception", formTypeFactory.UNK);
                }
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT, e);
        }
    }
    }
}

