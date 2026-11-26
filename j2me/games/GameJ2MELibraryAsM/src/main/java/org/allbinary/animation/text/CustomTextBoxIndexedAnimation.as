/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.animation.text {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.game.input.event.RawKeyEventListener;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.form.item.CustomTextBox;
    import org.allbinary.logic.string.StringUtil;

    public class CustomTextBoxIndexedAnimation extends IndexedAnimation implements RawKeyEventListener, UpdateMyFontInterface, TextInterface {
        private var customTextBox:CustomTextBox = null;
        private var lastText:String = null;
        public var hasChanged:Boolean = false;
        private var textChangeListener:TextChangeListener = null;

        // Java field initializers run after the base constructor
        private function initFieldsCustomTextBoxIndexedAnimation():void {
    
    this.lastText = StringUtil.getInstance().INIT_STRING;
    this.hasChanged = true;
    this.textChangeListener = TextChangeListener.getInstance();
        }
    

    public function CustomTextBoxIndexedAnimation(customTextBox:CustomTextBox) {
        super(AnimationBehavior.getInstance());
        this.initFieldsCustomTextBoxIndexedAnimation();
        this.customTextBox = customTextBox;
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        this.customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor);
    }
    

    override public function setBackgroundBasicColorP(basicColor:BasicColor):void {
        this.customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor);
    }
    

    public function setTextWithOnMeasure(text:String, textChangeListener:TextChangeListener):void {
        this.setText(text);
        this.textChangeListener = textChangeListener;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.textChangeListener.onMeasure();
        this.textChangeListener = TextChangeListener.getInstance();
    }
    

    public function setText(text:String):void {
        if (this.lastText != text) {
            this.hasChanged = true;
            this.lastText = text;
            this.customTextBox.getTextFieldItem().setString(text);
        }
    }
    

    public function getText():String {
        return this.customTextBox.getTextFieldItem().getString();
    }
    

    public function onEventRaw(keyCode:int, deviceId:int, repeated:Boolean):void {
        this.customTextBox.onEventRaw(keyCode, deviceId, repeated);
    }
    

    public function getFontHeight():int {
        return this.customTextBox.getTextFieldItem().getFontHeight();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.customTextBox.paintXY(graphics, x, y);
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
    }
    

    override public function getWidth():int {
        return super.getWidth();
    }
    }
}

