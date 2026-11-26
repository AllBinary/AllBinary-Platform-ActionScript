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
package org.allbinary.game.ag.layer.hud.basic.life {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;
    import org.allbinary.game.ag.life.Life;
    import org.allbinary.game.graphics.hud.BasicHud;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.displayable.event.DisplayChangeEvent;
    import org.allbinary.graphics.paint.PaintableInterface;

    public class LivesHudWidget extends BasicHud implements PaintableInterface {
        private var lifeInterface:Life = null;
        private var xArray:Vector.<int> = null;
        private var animationInterface:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsLivesHudWidget():void {
    
    
    
        }
    

    public function LivesHudWidget(animationInterface:Animation, lifeInterface:Life, location:int, direction:int) {
        super(location, direction, 2, BasicColorFactory.getInstance().WHITE);
        this.initFieldsLivesHudWidget();
        this.lifeInterface = lifeInterface;
        var size:int = this.getLifeInterface().getMaxlives();
        this.xArray = new Vector.<int>(size);
        this.animationInterface = animationInterface;
        this.updateMaxWidth = int(this.lifeInterface.getMaxlives() * 16);
        this.updateMaxHeight = 16;
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        super.updateMeasurement(graphics);
        var maxLives:int = this.getLifeInterface().getMaxlives();
        for (var index:int = 0; index < maxLives; index++) {
            this.xArray[index] = int(this.getX() + (int(index * 16)));
        }
    }
    

    override public function onDisplayChangeEvent(displayChangeEvent:DisplayChangeEvent):void {
        super.onDisplayChangeEvent(displayChangeEvent);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    override public function setX(x:int):void {
        super.setX(x);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        for (var index:int = this.getLifeInterface().get_(); --index >= 0; ) {
            this.animationInterface.paintXY(graphics, this.xArray[index], this.getY());
        }
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    

    public function getLifeInterface():Life {
        return this.lifeInterface;
    }
    }
}

