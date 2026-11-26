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
package org.allbinary.input.motion.button {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationInterface;
    import org.allbinary.graphics.CellPosition;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class TouchButton extends Paintable {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var touchButtonInput:TouchButtonInput = null;
        private var animationInterface:Animation = null;
        public var rawRectangle:Rectangle = null;
        public var xBorder:int = 0;
        public var yBorder:int = 0;
        public var rectangle:Rectangle = null;
        public var cellPosition:CellPosition = null;
        public var animationX:int = 0;
        public var animationY:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButton():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    this.rectangle = RectangleFactory.SINGLETON;
    
    this.animationX = 0;
    this.animationY = 0;
        }
    

    public function TouchButton(touchButtonInput:TouchButtonInput, animationInterface:AnimationInterface, rawRectangle:Rectangle, cellPosition:CellPosition, xBorder:int, yBorder:int) {
        super();
        this.initFieldsTouchButton();
        this.touchButtonInput = touchButtonInput;
        this.animationInterface = (animationInterface as Animation);
        this.rawRectangle = rawRectangle;
        this.cellPosition = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        this.updateRectangle();
        this.logUtil.putF(new StringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.animationInterface.paintXY(graphics, this.animationX, this.animationY);
    }
    

    public function updateRectangle():void {
        try {
            var x:int = int(this.rawRectangle.getWidth() * this.cellPosition.getColumn());
            var y:int = int(this.rawRectangle.getHeight() * this.cellPosition.getRow());
            var pointFactory:PointFactory = PointFactory.getInstance();
            this.rectangle = new Rectangle(pointFactory.createXY(int(x + this.xBorder), int(y + this.yBorder)), this.rawRectangle.getWidth(), this.rawRectangle.getHeight());
            var point:GPoint = this.rectangle.getPoint();
            this.animationX = point.getX();
            this.animationY = point.getY();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e);
        }
    }
    

    public function getCellPositionP():CellPosition {
        return this.cellPosition;
    }
    

    public function getRectangleP():Rectangle {
        return this.rectangle;
    }
    

    public function getTouchButtonInput():TouchButtonInput {
        return this.touchButtonInput;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        var stringUtil:StringUtil = StringUtil.getInstance();
        stringBuffer.append("TouchButton: ");
        stringBuffer.append(stringUtil.toString1(this.rectangle));
        stringBuffer.append(" CellPosition: ");
        stringBuffer.append(stringUtil.toString1(this.cellPosition));
        stringBuffer.append(" xBorder: ");
        stringBuffer.appendint(this.xBorder);
        stringBuffer.append(" yBorder: ");
        stringBuffer.appendint(this.yBorder);
        return stringBuffer.toString();
    }
    }
}

