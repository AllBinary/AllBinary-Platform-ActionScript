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
package org.allbinary.animation {
    import javax.microedition.khronos.opengles.GL;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface;

    public class Animation implements AnimationInterface, OpenGLSurfaceChangedInterface {
        public var basicSetColorUtil:BasicColorSetUtil = null;
        public var basicColor:BasicColor = null;
        public var colorP:int = 0;
        public var changeBasicColorP:BasicColor = null;
        public var changeColorP:int = 0;
        public var alphaP:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAnimation():void {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.colorP = 0;
    this.changeBasicColorP = BasicColorFactory.getInstance().NULL_COLOR;
    this.changeColorP = 0;
    this.alphaP = 0;
        }
    

    public function Animation() {
        super();
        this.initFieldsAnimation();
    }
    

    public function setAlpha(alpha:int):void {
        this.alphaP = alpha;
    }
    

    public function nextFrame():void {
    }
    

    public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
    }
    

    public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
    }
    

    public function isThreed():Boolean {
        return false;
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    

    public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
        this.colorP = this.basicColor.intValue();
    }
    

    public function setBackgroundBasicColorP(basicColor:BasicColor):void {
    }
    

    public function getChangeBasicColor():BasicColor {
        return this.changeBasicColorP;
    }
    

    public function changeBasicColor(basicColor:BasicColor):void {
        this.changeBasicColorP = basicColor;
        this.changeColorP = this.changeBasicColorP.intValue();
    }
    

    public function getChangeColor():int {
        return this.changeColorP;
    }
    

    public function getColor():int {
        return this.colorP;
    }
    

    public function setScale(scaleX:Number, scaleY:Number):void {
    }
    

    public function setMaxScale(maxScaleX:Number, maxScaleY:Number):void {
    }
    

    public function set_(...args):* {
        if (args.length == 1) {
            return this.set__jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "set");
    }

    private function set__jo1(gl:GL):void {
    }
    

    public function setDx(dx:int):void {
    }
    

    public function getDx():int {
        return 0;
    }
    

    public function setDy(dy:int):void {
    }
    

    public function getDy():int {
        return 0;
    }
    }
}

