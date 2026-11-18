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
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.form.item.ABCustomItem;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.math.RectangleCollisionUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;

    public class ScrollSelectionForm extends PaintableForm {
    private static var NULL_SCROLL_SELECTION_FORM_value:Object;
    private static var NULL_SCROLL_SELECTION_FORM_set:Boolean = false;
    private static function get NULL_SCROLL_SELECTION_FORM():Object {
        if (!ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM_set) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM_set = true;
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM_value;
    }
    private static var NULL_SCROLL_SELECTION_HORIZONTAL_FORM_value:Object;
    private static var NULL_SCROLL_SELECTION_HORIZONTAL_FORM_set:Boolean = false;
    private static function get NULL_SCROLL_SELECTION_HORIZONTAL_FORM():Object {
        if (!ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM_set) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM_set = true;
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM_value;
    }
    private static const INSIDE_FORM:String = " inside form";
    private static const IS_IN_FORM:String = "isInForm";
    private static const GET_SELECTED_INDEX:String = "getSelectedIndexForPoint";
        private var rectangleCollisionUtil:RectangleCollisionUtil = null;
        public var border:int = 0;
        public var halfBorder:int = 0;
        private var buttonBasicColor:BasicColor = null;
        public var scrollSelectionFormFormTypeItemIndexPaintable:ItemIndexPaintable = null;
        private var formTypeItemIndexDx:ItemIndexDx = null;
        public var paintable:ItemPaintable = null;
        private var adjustedExtraBorder:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsScrollSelectionForm():void {
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    
    
    
    this.scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance();
    this.formTypeItemIndexDx = ItemIndexDx.getInstance();
    this.paintable = ItemPaintableFactory.getInstance();
    
        }
    

    private static function createForm(title:String, items:Vector.<ABCustomItem>, formPaintableFactory:ItemPaintableFactory, border:int, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor):PaintableForm {
        try {
            if (formPaintableFactory == ItemPaintableFactory.getInstance()) {
                return new ScrollSelectionForm(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor);
            } else {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
                var logUtil:LogUtil = LogUtil.getInstance();
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION);
                return PaintableForm.getNullPaintableForm();
            }
        } catch (e:*) {
            commonStrings = CommonStrings.getInstance();
            logUtil = LogUtil.getInstance();
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e);
            return PaintableForm.getNullPaintableForm();
        }
    }
    

    public static function getNullScrollSelectionForm():ScrollSelectionForm {
        if (ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM == NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, new Vector.<ABCustomItem>(0), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM as ScrollSelectionForm);
    }
    

    public static function getNullScrollSelectionFormHorizontal():ScrollSelectionForm {
        if (ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM == NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, new Vector.<ABCustomItem>(0), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM as ScrollSelectionForm);
    }
    

    public function ScrollSelectionForm(title:String, items:Vector.<ABCustomItem>, formPaintableFactory:ItemPaintableFactory, border:int, adjustedExtraBorder:int, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(title, items, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsScrollSelectionForm();
        this.adjustedExtraBorder = adjustedExtraBorder;
        this.buttonBasicColor = foregroundBasicColor;
        this.border = border;
        this.halfBorder = (border >> 1);
        this.paintable = formPaintableFactory.getInstanceItemPaintable(this);
    }
    

    override public function init(rectangle:Rectangle, formType:FormType):void {
        super.init(rectangle, formType);
        var formTypeFactory:FormTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = new ScrollSelectionFormHorizontalPaintable(this);
            this.formTypeItemIndexDx = new ScrollSelectionFormHorizontalDx(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = new ScrollSelectionFormVerticalPaintable(this);
            this.formTypeItemIndexDx = new ScrollSelectionFormVericalDx(this);
        } else if (formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = new ScrollSelectionFormTempHorizontalPaintable(this);
            this.formTypeItemIndexDx = new ScrollSelectionFormTempHorizontalDx(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            throw new JException("Exception", formTypeFactory.UNK);
        }
    }
    

    public function paintItemHorizontal(graphics:Graphics, index:int, item:ABCustomItem, x:int, y:int):int {
        var width:int = item.getMinimumWidth();
        return int(int(x + width) + this.border);
    }
    

    public function paintItemVertical(graphics:Graphics, index:int, item:ABCustomItem, x:int, y:int):int {
        var height:int = item.getMinimumHeight();
        return int(int(y + height) + this.border);
    }
    

    public function paintItemTempHorizontal(graphics:Graphics, index:int, item:ABCustomItem, x:int, y:int):int {
        return 0;
    }
    

    public function getSelectedIndexForPointHorizontalDx(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return int(dx - this.halfBorder);
    }
    

    public function getSelectedIndexForPointVerticalDx(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return int(dx + this.getDiffX(item));
    }
    

    public function getSelectedIndexForPointTempHorizontalDx(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return int(dx + this.getDiffX(item));
    }
    

    override public function append(item:ABCustomItem):int {
        return super.append(item);
    }
    

    public function getSelectedItem(point:GPoint):ABCustomItem {
        var index:int = this.getSelectedIndexForPoint(point);
        if (index != -1) {
            return this.get_(index);
        } else {
            return ABCustomItem.getNullInstance();
        }
    }
    

    public function getItemIndex(item:ABCustomItem):int {
        var nextItem:ABCustomItem = null;
        var size:int = this.size();
        for (var index:int = 0; index < size; index++) {
            nextItem = (this.get_(index) as ABCustomItem);
            if (nextItem === item) {
                return index;
            }
        }
        return -1;
    }
    

    public function getStartIndex():int {
        return 0;
    }
    

    public function getSelectedIndexForPoint(point:GPoint):int {
        var start:int = this.getStartIndex();
        var size:int = this.size();
        var dx:int = this.getDx();
        var dy:int = this.getDy();
        var formTypeFactory:FormTypeFactory = FormTypeFactory.getInstance();
        var commonLabels:CommonLabels = CommonLabels.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(commonLabels.START_LABEL);
        stringBuffer.appendint(start);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(commonLabels.TOTAL_LABEL);
        stringBuffer.appendint(size);
        this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX);
        var item:ABCustomItem = null;
        var width:int = 0;
        var height:int = 0;
        var diffX:int = 0;
        for (var index:int = start; index < size; index++) {
            item = this.get_(index);
            width = item.getMinimumWidth();
            height = item.getMinimumHeight();
            diffX = this.formTypeItemIndexDx.getDx(index, item, dx, dy);
            if (this.rectangleCollisionUtil.isInside(diffX, int(dy - this.halfBorder), int(int(diffX + width) + this.border), int(int(int(dy + height) + this.halfBorder) + 1), point.getX(), point.getY())) {
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(commonLabels.ITEM_LABEL);
                stringBuffer.append(item.getLabel());
                stringBuffer.append(CommonSeps.getInstance().SPACE);
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.appendint(index);
                this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX);
                return index;
            }
            if (this.formType == formTypeFactory.HORIZONTAL_FORM) {
                dx = int(int(dx + width) + this.border);
                if (dx > this.rectangle.getMaxX()) {
                    break;
                }
            } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
                dy = int(int(dy + height) + this.border);
                if (dy > this.rectangle.getMaxY()) {
                    break;
                }
            } else if (this.formType == formTypeFactory.NULL_FORM_TYPE) {
            } else {
                throw new JException("Exception", formTypeFactory.UNK);
            }
        }
        return -1;
    }
    

    public function processInputKey(gameKeyCode:int):int {
        var formTypeFactory:FormTypeFactory = FormTypeFactory.getInstance();
        if (this.size() == 0) {
            return -1;
        }
        var index:int = this.getSelectedIndex();
        if (this.formType == formTypeFactory.HORIZONTAL_FORM || this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            if (gameKeyCode == Canvas.RIGHT) {
                index++;
            } else if (gameKeyCode == Canvas.LEFT) {
                index--;
            }
        } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            if (gameKeyCode == Canvas.DOWN) {
                index++;
            } else if (gameKeyCode == Canvas.UP) {
                index--;
            }
        } else if (this.formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            throw new JException("Exception", formTypeFactory.UNK);
        }
        var max:int = int(this.size() - 1);
        if (index < 0) {
            this.setSelectedIndex(0);
        } else if (index > max) {
            this.setSelectedIndex(max);
        } else {
            this.setSelectedIndex(index);
        }
        return -1;
    }
    

    public function isInForm(point:GPoint):Boolean {
        if (this.rectangleCollisionUtil.isInside(this.x, this.y - this.halfBorder, int(this.rectangle.getMaxX() + this.border), int(this.rectangle.getMaxY() + this.border), point.getX(), point.getY())) {
            this.logUtil.putF(new StringMaker().append(StringUtil.getInstance().toString1(point)).append(ScrollSelectionForm.INSIDE_FORM).toString(), this, ScrollSelectionForm.IS_IN_FORM);
            return true;
        }
        return false;
    }
    

    public function paintItem(graphics:Graphics, index:int, item:ABCustomItem, x:int, y:int):int {
        item.paintXY(graphics, x, y);
        var width:int = item.getMinimumWidth();
        var height:int = item.getMinimumHeight();
        graphics.setColor(this.getButtonBasicColor().intValue());
        var adjustedBorder:int = 3;
        graphics.drawRect(int(int(x - this.halfBorder) - adjustedBorder), int(int(y - this.halfBorder) - adjustedBorder), int(int(width + this.border) + this.adjustedExtraBorder), int(int(height + this.border) + this.adjustedExtraBorder));
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    public function paintUnselectedItem(graphics:Graphics, index:int, item:ABCustomItem, x:int, y:int):int {
        graphics.setColor(this.getButtonBasicColor().intValue());
        item.paintUnselected(graphics, x, y);
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    public function getDiffX(item:ABCustomItem):int {
        return 0;
    }
    

    public function getDx():int {
        return this.x;
    }
    

    public function getDy():int {
        return this.y;
    }
    

    public function setButtonBasicColor(buttonBasicColor:BasicColor):void {
        this.buttonBasicColor = buttonBasicColor;
    }
    

    private function getButtonBasicColor():BasicColor {
        return this.buttonBasicColor;
    }
    }
}

