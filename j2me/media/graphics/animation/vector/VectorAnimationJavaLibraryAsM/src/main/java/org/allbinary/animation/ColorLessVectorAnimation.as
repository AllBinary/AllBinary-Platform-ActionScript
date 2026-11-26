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
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColorFactory;

    public class ColorLessVectorAnimation extends VectorAnimation {
    

    public function ColorLessVectorAnimation(currentPoints:Vector.<Vector.<Vector.<int>>>, animationBehavior:AnimationBehavior) {
        super(currentPoints, BasicColorFactory.getInstance().WHITE, animationBehavior);
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.paintVectors(graphics, x, y);
    }
    }
}

