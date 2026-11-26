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
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.J2MEUtil;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.animation.vector.RectangleAdjustedAnimation;
    import org.allbinary.animation.vector.RectangleFilledAdjustedAnimation;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.form.item.CommandTextItem;
    import org.allbinary.graphics.form.item.ABCustomItem;

    public class CommandCurrentSelectionForm extends ScrollCurrentSelectionForm implements UpdateMyFontInterface {
        public var selectedAnimationArray:Vector.<Animation> = null;
        public var unSelectedAnimationArray:Vector.<Animation> = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommandCurrentSelectionForm():void {
    this.selectedAnimationArray = new Vector.<Animation>(16);
    this.unSelectedAnimationArray = new Vector.<Animation>(16);
        }
    

    public function CommandCurrentSelectionForm(title:String, items:Vector.<ABCustomItem>, border:int, moveForSmallScreen:Boolean, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCommandCurrentSelectionForm();
        this.initAnimations();
        this.addAll(items);
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        this.updateAll(graphics, this.getAllitems());
        super.updateMeasurement(graphics);
    }
    

    private function initAnimations():void {
        var nullAnimation:Animation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        for (var index:int = this.selectedAnimationArray.length; --index >= 0; ) {
            this.selectedAnimationArray[index] = nullAnimation;
        }
        for (index = this.unSelectedAnimationArray.length; --index >= 0; ) {
            this.unSelectedAnimationArray[index] = nullAnimation;
        }
    }
    

    private function addAll(items:Vector.<ABCustomItem>):void {
        for (var index:int = items.length; --index >= 0; ) {
            this.addAt(index, items[index]);
        }
    }
    

    private function addAt(index:int, item:ABCustomItem):void {
        var basicColorFactory:BasicColorFactory = BasicColorFactory.getInstance();
        var buttonColor:BasicColor = basicColorFactory.TRANSPARENT_GREY;
        var selectedButtonColor:BasicColor = basicColorFactory.TRANSPARENT_RED;
        var width:int = item.getMinimumWidth();
        var height:int = item.getMinimumHeight();
        var adjustedBorder:int = 3;
        var offset:int = -(this.halfBorder + adjustedBorder);
        var rectWidth:int = width + this.border - adjustedBorder;
        var rectHeight:int = height + this.border - adjustedBorder;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.selectedAnimationArray[index] = new RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        } else {
            this.selectedAnimationArray[index] = new RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.unSelectedAnimationArray[index] = new RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        } else {
            this.unSelectedAnimationArray[index] = new RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        }
    }
    

    private function updateAll(graphics:Graphics, items:Vector.<ABCustomItem>):void {
        for (var index:int = items.length; --index >= 0; ) {
            items[index].preMeasurement(graphics);
            this.updateAt(index, items[index]);
        }
    }
    

    private function updateAt(index:int, item:ABCustomItem):void {
        var basicColorFactory:BasicColorFactory = BasicColorFactory.getInstance();
        var buttonColor:BasicColor = basicColorFactory.TRANSPARENT_GREY;
        var selectedButtonColor:BasicColor = basicColorFactory.TRANSPARENT_RED;
        var width:int = item.getMinimumWidth();
        var height:int = item.getMinimumHeight();
        var adjustedBorder:int = 3;
        var offset:int = -(this.halfBorder + adjustedBorder);
        var rectWidth:int = width + this.border - adjustedBorder;
        var rectHeight:int = height + this.border - adjustedBorder;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            rectangleAdjustedAnimation = (this.selectedAnimationArray[index] as RectangleAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        } else {
            var rectangleAdjustedAnimation:* = (this.selectedAnimationArray[index] as RectangleFilledAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            rectangleAdjustedAnimation = (this.unSelectedAnimationArray[index] as RectangleAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        } else {
            rectangleAdjustedAnimation = (this.unSelectedAnimationArray[index] as RectangleFilledAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        }
    }
    

    public function getSelectedCommand():Command {
        var index:int = super.getSelectedIndex();
        var commandTextItem:CommandTextItem = (this.get_(index) as CommandTextItem);
        return commandTextItem.getCommand();
    }
    

    override public function append(...args):int {
        if (args.length == 1) {
            return this.append_jo1(args[0]);
        }
        return super.append.apply(this, args);
    }

    private function append_jo1(item:ABCustomItem):int {
        var result:int = super.append(item);
        this.addAt(result, item);
        return result;
    }
    

    override public function delete_(...args):void {
        if (args.length == 1) {
            this.delete__jo1(args[0]);
            return;
        }
        super.delete_.apply(this, args);
    }

    private function delete__jo1(itemNum:int):void {
        super.delete_(itemNum);
    }
    

    override public function deleteAll():void {
        this.initAnimations();
        super.deleteAll();
    }
    

    override public function insert(...args):void {
        if (args.length == 2) {
            this.insert_jo2(args[0], args[1]);
            return;
        }
        super.insert.apply(this, args);
    }

    private function insert_jo2(itemNum:int, item:ABCustomItem):void {
        super.insert(itemNum, item);
    }
    

    override public function set_(...args):* {
        if (args.length == 2) {
            return this.set__jo2(args[0], args[1]);
        }
        return super.set_.apply(this, args);
    }

    private function set__jo2(itemNum:int, item:ABCustomItem):void {
        super.set_(itemNum, item);
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        super.paint(graphics);
    }
    

    override public function paintItem(...args):int {
        if (args.length == 5) {
            return this.paintItem_jo5(args[0], args[1], args[2], args[3], args[4]);
        }
        return super.paintItem.apply(this, args);
    }

    private function paintItem_jo5(graphics:Graphics, index:int, item:ABCustomItem, x:int, y:int):int {
        this.selectedAnimationArray[index].paintXY(graphics, x, y);
        return super.paintItem(graphics, index, item, x, y);
    }
    

    override public function paintUnselectedItem(graphics:Graphics, index:int, item:ABCustomItem, x:int, y:int):int {
        this.unSelectedAnimationArray[index].paintXY(graphics, x, y);
        return super.paintUnselectedItem(graphics, index, item, x, y);
    }
    }
}

