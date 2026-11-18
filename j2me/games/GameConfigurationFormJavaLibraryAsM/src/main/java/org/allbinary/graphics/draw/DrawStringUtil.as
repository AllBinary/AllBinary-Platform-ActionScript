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
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;

    public class DrawStringUtil {
    private static var instance_value:DrawStringUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():DrawStringUtil {
        if (!DrawStringUtil.instance_set) {
            DrawStringUtil.instance_set = true;
            DrawStringUtil.instance_value = new DrawStringUtil();
        }
        return DrawStringUtil.instance_value;
    }
        private var EMPTY_STRING:String = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsDrawStringUtil():void {
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.anchor = Anchor.TOP_LEFT;
        }

        public function DrawStringUtil() {
            super();
            this.initFieldsDrawStringUtil();
        }
    

    public static function getInstance():DrawStringUtil {
        return DrawStringUtil.instance;
    }
    

    public function drawCenterString(graphics:Graphics, string:String, offset:int, length:int, x:int, y:int):void {
        var width:int = (graphics.getFont().substringWidth(string, offset, length) >> 1);
        try {
            graphics.drawSubstring(string, offset, length, int(x - width), y, this.anchor);
        } catch (e:*) {
            PreLogUtil.put(new StringMaker().append("Exception: stringLength: ").appendint(string.length).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString");
        }
    }
    

    public function drawCenterStrings(graphics:Graphics, stringArray:Vector.<String>, maxWidth:int, charHeight:int, x:int, y:int):void {
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
                        while (currentLength > 0 && stringArray[index].charAt(int(offset + currentLength)) != " ".charCodeAt(0)) {
                            currentLength--;
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion;
                        }
                    }
                    this.drawCenterString(graphics, string, offset, currentLength, x, int(y + (int((int(index + extraLines++)) * charHeight))));
                    offset = int(offset + currentLength);
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
    }
}

