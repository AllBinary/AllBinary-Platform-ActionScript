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
package org.allbinary.animation.vector {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.AndroidUtil;
    import org.allbinary.graphics.color.BasicColor;

    public class AdjustedCircleAnimation extends CircleAnimation {
        private var xAdjustment:int = 0;
        private var yAdjustment:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAdjustedCircleAnimation():void {
    this.xAdjustment = 0;
    this.yAdjustment = 0;
        }
    

    public static function createAnimation(width:int, height:int, xAdjustment:int, yAdjustment:int, basicColor:BasicColor):AdjustedCircleAnimation {
        var adjustedCircleAnimation:AdjustedCircleAnimation = new AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment);
        return adjustedCircleAnimation;
    }
    

    public static function createW(width:int, height:int, innerWidth:int, basicColor:BasicColor):AdjustedCircleAnimation {
        var adjustedCircleAnimation:AdjustedCircleAnimation = new AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.init(innerWidth);
        return adjustedCircleAnimation;
    }
    

    public function AdjustedCircleAnimation(width:int, height:int, basicColor:BasicColor) {
        super(width, height, basicColor);
        this.initFieldsAdjustedCircleAnimation();
    }
    

    private function initXY(xAdjustment:int, yAdjustment:int):void {
        this.xAdjustment = xAdjustment;
        this.yAdjustment = yAdjustment;
    }
    

    private function init(innerWidth:int):void {
        if (AndroidUtil.isAndroid()) {
            var widthPortion:int = (int((int((int(innerWidth / 3)) * 10)) / 7));
            this.xAdjustment = -((this.width >> 1) - widthPortion);
            this.yAdjustment = this.xAdjustment;
        } else {
            this.xAdjustment = -((this.width >> 1) - innerWidth);
            this.yAdjustment = this.xAdjustment;
        }
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawArc(int(x + this.xAdjustment), int(y + this.yAdjustment), this.width, this.height, 0, this.TOTAL_ANGLE);
    }
    }
}

