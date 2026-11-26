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
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;

    public class CanvasDrawLineString implements UpdateMyFontInterface {
    private static var NULL_CANVAS_DRAW_LINE_STRING_value:CanvasDrawLineString;
    private static var NULL_CANVAS_DRAW_LINE_STRING_set:Boolean = false;
    public static function get NULL_CANVAS_DRAW_LINE_STRING():CanvasDrawLineString {
        if (!CanvasDrawLineString.NULL_CANVAS_DRAW_LINE_STRING_set) {
            CanvasDrawLineString.NULL_CANVAS_DRAW_LINE_STRING_set = true;
            CanvasDrawLineString.NULL_CANVAS_DRAW_LINE_STRING_value = new CanvasDrawLineString(0, 0);
        }
        return CanvasDrawLineString.NULL_CANVAS_DRAW_LINE_STRING_value;
    }
        private var drawStringUtil:DrawStringUtil = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var x:int = 0;
        private var y:int = 0;
        private var fontHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCanvasDrawLineString():void {
    this.drawStringUtil = DrawStringUtil.getInstance();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    
    
    this.fontHeight = 0;
        }
    

    public function CanvasDrawLineString(x:int, y:int) {
        super();
        this.initFieldsCanvasDrawLineString();
        this.x = x;
        this.y = y;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function paint(...args):void {
        if (args.length == 3) {
            this.paint_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo3(graphics:Graphics, string:String, line:int):void {
        this.myFontProcessor.process(graphics);
        this.drawStringUtil.drawCenterString(graphics, string, 0, string.length, this.x, int(this.y + (int(line * this.fontHeight))));
    }
    }
}

