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
package org.allbinary.animation.text {
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.graphics.font.FontDebugFactory;
    import org.allbinary.logic.string.StringUtil;

    public class CustomTextAnimation extends TextAnimation implements TextInterface {
        public var fontDebugFactory:FontDebugFactory = null;
        public var fontSize:int = 0;
        public var font:Font = null;
        private var lastText:String = null;
        public var hasChanged:Boolean = false;
        private var textWidth:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCustomTextAnimation():void {
    this.fontDebugFactory = FontDebugFactory.getInstance();
    
    
    this.lastText = StringUtil.getInstance().INIT_STRING;
    this.hasChanged = true;
    this.textWidth = 0;
        }
    

    public function CustomTextAnimation(text:String, fontSize:int, animationBehavior:AnimationBehavior) {
        super(text, animationBehavior);
        this.initFieldsCustomTextAnimation();
        this.fontSize = fontSize;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, fontSize);
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.myFontProcessor.process(graphics);
        var existingFont:Font = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        super.paintXYNoUpdate(graphics, x, y);
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    override public function setScale(scaleX:Number, scaleY:Number):void {
        if (scaleX != scaleY) {
            throw new JException("RuntimeException", "");
        }
        this.hasChanged = true;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, JMath.toInt32((Number(this.fontSize) * scaleX)));
    }
    

    override public function setTextWithOnMeasure(text:String, textChangeListener:TextChangeListener):void {
        super.setTextWithOnMeasure(text, textChangeListener);
    }
    

    override public function setText(text:String):void {
        if (this.lastText != text) {
            this.hasChanged = true;
            this.lastText = text;
            super.setText(text);
        }
    }
    

    public function getText():String {
        return this.lastText;
    }
    

    override public function getWidth():int {
        if (this.hasChanged) {
            this.textWidth = this.font.stringWidth(this.textArrayP[0]);
            this.hasChanged = false;
        }
        return this.textWidth;
    }
    

    override public function getFontHeight():int {
        return this.font.getHeight();
    }
    }
}

