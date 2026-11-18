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
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory;
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
        private var hintAnimationInterface:Animation = null;
        public var rawRectangle:Rectangle = null;
        public var xBorder:int = 0;
        public var yBorder:int = 0;
        public var rectangleP:Rectangle = null;
        public var cellPositionP:CellPosition = null;
        public var animationX:int = 0;
        public var animationY:int = 0;
        public var hintAnimationY:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButton():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    
    this.rectangleP = RectangleFactory.SINGLETON;
    
    this.animationX = 0;
    this.animationY = 0;
    this.hintAnimationY = 0;
        }
    

    public static function createButton(touchButtonInput:TouchButtonInput, touchButtonResource:TouchButtonResource, rawRectangle:Rectangle, cellPosition:CellPosition, xBorder:int, yBorder:int):TouchButton {
        return new TouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get_(touchButtonResource.RESOURCE).getInstance1(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get_(touchButtonResource.HINT).getInstance1(0), rawRectangle, cellPosition, xBorder, yBorder);
    }
    

    public function TouchButton(touchButtonInput:TouchButtonInput, animationInterface:Animation, hintAnimationInterface:Animation, rawRectangle:Rectangle, cellPosition:CellPosition, xBorder:int, yBorder:int) {
        super();
        this.initFieldsTouchButton();
        this.touchButtonInput = touchButtonInput;
        this.animationInterface = animationInterface;
        this.hintAnimationInterface = hintAnimationInterface;
        this.rawRectangle = rawRectangle;
        this.cellPositionP = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        this.updateRectangle();
        this.logUtil.putF(new StringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    public function paintHint(graphics:Graphics):void {
        this.hintAnimationInterface.paintXY(graphics, this.animationX, this.hintAnimationY);
    }
    

    override public function paint(graphics:Graphics):void {
        this.animationInterface.paintXY(graphics, this.animationX, this.animationY);
    }
    

    public function updateRectangle():void {
        try {
            var pointFactory:PointFactory = PointFactory.getInstance();
            var x:int = int(this.rawRectangle.getWidth() * this.cellPositionP.getColumn());
            var y:int = int(this.rawRectangle.getHeight() * this.cellPositionP.getRow());
            this.rectangleP = new Rectangle(pointFactory.createXY(int(x + this.xBorder), int(y + this.yBorder)), this.rawRectangle.getWidth(), this.rawRectangle.getHeight());
            var point:GPoint = this.rectangleP.getPoint();
            this.animationX = point.getX();
            this.animationY = point.getY();
            this.hintAnimationY = int(this.animationY - 32);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e);
        }
    }
    

    public function getCellPosition():CellPosition {
        return this.cellPositionP;
    }
    

    public function getRectangle():Rectangle {
        return this.rectangleP;
    }
    

    public function getTouchButtonInput():TouchButtonInput {
        return this.touchButtonInput;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        var stringUtil:StringUtil = StringUtil.getInstance();
        stringBuffer.append("TouchButton: ");
        stringBuffer.append(stringUtil.toString1(this.getRectangle()));
        stringBuffer.append(" CellPosition: ");
        stringBuffer.append(stringUtil.toString1(this.cellPositionP));
        stringBuffer.append(" xBorder: ");
        stringBuffer.appendint(this.xBorder);
        stringBuffer.append(" yBorder: ");
        stringBuffer.appendint(this.yBorder);
        return stringBuffer.toString();
    }
    }
}

