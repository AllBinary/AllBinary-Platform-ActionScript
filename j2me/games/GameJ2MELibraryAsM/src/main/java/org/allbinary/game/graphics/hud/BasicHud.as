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
package org.allbinary.game.graphics.hud {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.J2MEUtil;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.displayable.event.DisplayChangeEvent;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonStrings;

    public class BasicHud implements UpdateMyFontInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var canvasStrings:CanvasStrings = null;
        public var basicSetColorUtil:BasicColorSetUtil = null;
        private var displayInfo:DisplayInfoSingleton = null;
        public var updateMyFontProcessor:MyFontProcessor = null;
        public var myFontProcessor:MyFontProcessor = null;
        private var location:int = 0;
        private var direction:int = 0;
        private var bufferZone:int = 0;
        private var bufferZoneY:int = 0;
        private var hudGraphicsPosition:HudGraphicsPosition = null;
        private var x:int = 0;
        private var y:int = 0;
        private var basicColor:BasicColor = null;
        private var color:int = 0;
        public var updateMaxWidth:int = 0;
        public var updateMaxHeight:int = 0;
        public var offsetY:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicHud():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.location = 0;
    this.direction = 0;
    this.bufferZone = 0;
    this.bufferZoneY = 0;
    this.hudGraphicsPosition = HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION;
    this.x = 0;
    this.y = 0;
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    this.updateMaxWidth = 0;
    this.updateMaxHeight = 0;
    this.offsetY = 0;
        }
    

    public function BasicHud(location:int, direction:int, bufferZone:int, basicColor:BasicColor) {
        super();
        this.initFieldsBasicHud();
        this.setLocation(location);
        this.setDirection(direction);
        this.setBufferZone(bufferZone);
        this.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().displayChangeEvent);
        this.setBasicColorP(basicColor);
        this.color = basicColor.intValue();
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        try {
            this.hudGraphicsPosition = this.getHudGraphicsPositionWH(this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight(), this.updateMaxWidth, this.updateMaxHeight);
            this.x = this.hudGraphicsPosition.getPoint().getX();
            this.setY(this.hudGraphicsPosition.getPoint().getY());
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function getLocation():int {
        return this.location;
    }
    

    public function getDirection():int {
        return this.direction;
    }
    

    public function getHudGraphicsPositionWH(width:int, height:int, maxWidth:int, maxHeight:int):HudGraphicsPosition {
        var x:int = 0;
        var y:int = 0;
        var anchor:int = 0;
        var basicHudFactory:BasicHudFactory = BasicHudFactory.getInstance();
        if (basicHudFactory.BOTTOMLEFT == this.getLocation()) {
            x = int(this.bufferZone + 2);
            y = int(int(height - maxHeight) - this.bufferZone);
            anchor = Graphics.BOTTOM & Graphics.LEFT;
        } else if (basicHudFactory.BOTTOMRIGHT == this.getLocation()) {
            x = int(width - maxWidth);
            y = int(int(height - maxHeight) - this.bufferZone);
            anchor = Graphics.BOTTOM & Graphics.RIGHT;
        } else if (basicHudFactory.TOPLEFT == this.getLocation()) {
            x = int(this.bufferZone + 2);
            y = this.bufferZoneY;
            anchor = Anchor.TOP_LEFT;
        } else if (basicHudFactory.TOPRIGHT == this.getLocation()) {
            x = int(width - maxWidth);
            y = this.bufferZoneY;
            anchor = Graphics.TOP & Graphics.RIGHT;
        } else if (basicHudFactory.TOPCENTER == this.getLocation()) {
            x = (int((int(width - maxWidth)) / 2));
            y = this.bufferZoneY;
            anchor = Graphics.TOP & Graphics.HCENTER;
        } else if (basicHudFactory.BOTTOMCENTER == this.getLocation()) {
            x = (int((int(width - maxWidth)) / 2));
            y = int(int(height - maxHeight) - this.bufferZone);
            anchor = Graphics.BOTTOM & Graphics.HCENTER;
        } else if (basicHudFactory.ABSOLUTE == this.getLocation()) {
            x = maxHeight;
            y = maxWidth;
            anchor = 0;
        }
        return new HudGraphicsPosition(this.getPoint(x, y), anchor);
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onDisplayChangeEvent(displayChangeEvent:DisplayChangeEvent):void {
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public function getPoint(x:int, y:int):GPoint {
        return PointFactory.getInstance().createXY(x, y);
    }
    

    public function getBufferZone():int {
        return this.bufferZone;
    }
    

    public function setBufferZone(bufferZone:int):void {
        this.bufferZone = bufferZone;
        if (J2MEUtil.isHTML()) {
            this.bufferZoneY = this.bufferZone;
        } else {
            this.bufferZoneY = int(this.bufferZone + 5);
        }
    }
    

    public function setLocation(location:int):void {
        this.location = location;
    }
    

    public function setDirection(direction:int):void {
        this.direction = direction;
    }
    

    public function getHudGraphicsPosition():HudGraphicsPosition {
        return this.hudGraphicsPosition;
    }
    

    public function getColor():int {
        return this.color;
    }
    

    public function getX():int {
        return this.x;
    }
    

    public function setX(x:int):void {
        this.x = x;
    }
    

    public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    

    public function setY(y:int):void {
        this.y = y;
    }
    

    public function getY():int {
        return this.y;
    }
    

    public function paintSSO(graphics:Graphics, string:String, string2:String, offset:int):void {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawString(string, this.x, this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, int(this.x + offset), this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    public function paintSSOO(graphics:Graphics, string:String, string2:String, offset:int, offset2:int):void {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.getColor());
        graphics.drawString(string, int(this.x + offset), this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, int(this.x + offset2), this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    public function paintDXY(graphics:Graphics, charArray:Vector.<int>, offset:int, len:int, charArray2:Vector.<int>, offset2:int, len2:int, xOffset:int, xOffset2:int):void {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        var y:int = this.getY();
        graphics.drawChars(charArray, offset, len, int(this.x + xOffset), y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, int(this.x + xOffset2), y, this.hudGraphicsPosition.getAnchor());
    }
    

    public function paintDX(graphics:Graphics, charArray:Vector.<int>, offset:int, len:int, charArray2:Vector.<int>, offset2:int, len2:int, xOffset:int):void {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        var y:int = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, int(this.x + xOffset), y, this.hudGraphicsPosition.getAnchor());
    }
    

    public function paintOffsetAndLength(graphics:Graphics, charArray:Vector.<int>, offset:int, len:int):void {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        var y:int = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
    

    public function paintString(graphics:Graphics, string:String):void {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        var y:int = int(this.getY() + this.offsetY);
        graphics.drawString(string, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
    }
}

