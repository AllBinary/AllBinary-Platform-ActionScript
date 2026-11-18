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
package org.allbinary.game.paint {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.ColorCompositeInterface;
    import org.allbinary.graphics.paint.Paintable;

    public class ColorFillBasePaintable extends Paintable implements ColorCompositeInterface {
        public var basicColor:BasicColor = null;
        public var colorP:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsColorFillBasePaintable():void {
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.colorP = 0;
        }
    

    public function ColorFillBasePaintable(basicColor:BasicColor) {
        super();
        this.initFieldsColorFillBasePaintable();
        this.setBasicColorP(basicColor);
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
        this.setColor(this.getBasicColorP().intValue());
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    

    public function getColor():int {
        return this.colorP;
    }
    

    public function setColor(color:int):void {
        this.colorP = color;
    }
    

    override public function paint(graphics:Graphics):void {
    }
    }
}

