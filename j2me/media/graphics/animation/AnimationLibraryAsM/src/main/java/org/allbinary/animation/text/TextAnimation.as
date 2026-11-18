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
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.threed.SWTJOGLProcessor;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class TextAnimation extends IndexedAnimation implements UpdateMyFontInterface {
        private var updateMyFontProcessor:MyFontProcessor = null;
        public var myFontProcessor:MyFontProcessor = null;
        public var textArrayP:Vector.<String> = null;
        private var anchor:int = 0;
        private var fontHeight:int = 0;
        private var offsetY:int = 0;
        private var textChangeListener:TextChangeListener = null;

        // Java field initializers run after the base constructor
        private function initFieldsTextAnimation():void {
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeight = 0;
    this.offsetY = 0;
    this.textChangeListener = TextChangeListener.getInstance();
        }
    

    public function TextAnimation(text:String, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsTextAnimation();
        this.setText(text);
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.fontHeight = font.getHeight();
        var adjustedFontHeight:int = JMath.toInt32(-(Number(this.fontHeight) * 2.00));
        this.offsetY = (SWTJOGLProcessor.getInstance().isJOGL() ? adjustedFontHeight : 0);
        this.textChangeListener.onMeasure();
        this.textChangeListener = TextChangeListener.getInstance();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function nextFrame():void {
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.myFontProcessor.process(graphics);
        this.paintXYNoUpdate(graphics, x, y);
    }
    

    public function paintXYNoUpdate(graphics:Graphics, x:int, y:int):void {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        var size:int = this.textArrayP.length;
        for (var index:int = 0; index < size; index++) {
            graphics.drawString(this.textArrayP[index], x, int(int(y + this.offsetY) + (int(index * this.fontHeight))), this.anchor);
        }
    }
    

    public function setTextWithOnMeasure(text:String, textChangeListener:TextChangeListener):void {
        this.setText(text);
        this.textChangeListener = textChangeListener;
    }
    

    public function setText(text:String):void {
        var list:BasicArrayList = new BasicArrayListD();
        if (text.length > 0) {
            var index:int = 0;
            var startIndex:int = 0;
            var endIndex:int = 0;
            while (index >= 0) {
                startIndex = index;
                index = JString.indexOf(text, "\n".charCodeAt(0), startIndex);
                endIndex = index;
                if (index < 0) {
                    endIndex = text.length;
                }
                list.add(text.substring(startIndex, endIndex));
                if (index < 0) {
                    break;
                }
                index++;
            }
        }
        if (list.size() > 0) {
            var textArray:Vector.<String> = new Vector.<String>(list.size());
            var size:int = list.size();
            for (index = 0; index < size; index++) {
                textArray[index] = (list.get_(index) as String);
            }
            this.textArrayP = textArray;
        } else {
            this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public function getTextArray():Vector.<String> {
        return this.textArrayP;
    }
    

    public function getFontHeight():int {
        return this.fontHeight;
    }
    }
}

