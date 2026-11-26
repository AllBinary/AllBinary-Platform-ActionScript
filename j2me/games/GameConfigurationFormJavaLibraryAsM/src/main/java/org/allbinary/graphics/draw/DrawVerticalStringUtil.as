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
package org.allbinary.graphics.draw {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.AndroidUtil;
    import org.allbinary.J2MEUtil;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.opengles.OpenGLFeatureUtil;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;

    public class DrawVerticalStringUtil {
    private static var instance_value:DrawVerticalStringUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():DrawVerticalStringUtil {
        if (!DrawVerticalStringUtil.instance_set) {
            DrawVerticalStringUtil.instance_set = true;
            DrawVerticalStringUtil.instance_value = new DrawVerticalStringUtil();
        }
        return DrawVerticalStringUtil.instance_value;
    }
        private var EMPTY_STRING:String = null;
        private var anchor:int = 0;
        private var charHeight:int = 0;
        private var offsetY:int = 0;
        private var offsetXArray:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsDrawVerticalStringUtil():void {
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.anchor = Anchor.TOP_LEFT;
    this.charHeight = 0;
    this.offsetY = 0;
    this.offsetXArray = NullUtil.getInstance().NULL_INT_ARRAY;
        }

        public function DrawVerticalStringUtil() {
            super();
            this.initFieldsDrawVerticalStringUtil();
        }
    

    public static function getInstance():DrawVerticalStringUtil {
        return DrawVerticalStringUtil.instance;
    }
    

    public function updateMeasurement(graphics:Graphics, string:String):void {
        var openGLFeatureUtil:OpenGLFeatureUtil = OpenGLFeatureUtil.getInstance();
        var font:Font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.offsetY = 0;
        if (J2MEUtil.isHTML()) {
            this.charHeight += 1;
        } else if (openGLFeatureUtil.isAnyThreed()) {
            this.charHeight += 2;
            if (AndroidUtil.isAndroid()) {
            } else {
                this.offsetY = int(2 + (int(int(this.charHeight * 2) / 3)));
            }
        }
        var size:int = string.length;
        var aChar:int = 0;
        var offsetXArray:Vector.<int> = new Vector.<int>(size);
        for (var index:int = int(size - 1); index >= 0; index--) {
            aChar = string.charCodeAt(index);
            if (openGLFeatureUtil.isAnyThreed()) {
                offsetXArray[index] = int(font.charWidth(aChar) / 2);
            }
        }
        this.offsetXArray = offsetXArray;
    }
    

    public function paintVerticle(graphics:Graphics, string:String, x:int, y:int, anchor:int):void {
        var size:int = string.length;
        var aChar:int = 0;
        for (var index:int = int(size - 1); index >= 0; index--) {
            aChar = string.charCodeAt(index);
            graphics.drawChar(aChar, int(x + this.offsetXArray[index]), int(int(y + (int(this.charHeight * index))) + this.offsetY), anchor);
        }
    }
    

    public function drawCenterString(graphics:Graphics, string:String, offset:int, length:int, x:int, y:int):void {
        var width:int = (graphics.getFont().substringWidth(string, offset, length) >> 1);
        try {
            graphics.drawSubstring(string, offset, length, int(x - width), y, this.anchor);
        } catch (e:*) {
            PreLogUtil.put(new StringMaker().append("Exception: stringLength: ").appendint(string.length).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString");
        }
    }
    

    public function drawCenterStrings(graphics:Graphics, stringArray:Vector.<String>, maxWidth:int, x:int, y:int):void {
        var extraLines:int = 0;
        for (var index:int = 0; index < stringArray.length; index++) {
            var string:String = stringArray[index];
            if (string != this.EMPTY_STRING) {
                var width:int = graphics.getFont().stringWidth(string);
                var minTotalLines:int = 1;
                if (width > maxWidth) {
                    minTotalLines = int((int(width / maxWidth)) + 1);
                }
                var linePortion:int = int(string.length / minTotalLines);
                var offset:int = 0;
                var currentLength:int = linePortion;
                var size:int = string.length;
                while (offset < size) {
                    if (int(offset + currentLength) > size) {
                        currentLength = int(size - offset);
                    }
                    if (int(offset + currentLength) != size) {
                        while (currentLength > 0 && stringArray[index].charCodeAt(int(offset + currentLength)) != " ".charCodeAt(0)) {
                            currentLength--;
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion;
                        }
                    }
                    this.drawCenterString(graphics, string, offset, currentLength, x, int(y + (int((int(index + extraLines++)) * this.charHeight))));
                    offset = int(offset + currentLength);
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
    }
}

