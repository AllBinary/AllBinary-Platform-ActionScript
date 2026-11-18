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
package org.allbinary.game.ag.layer.hud.basic.health {
    import org.allbinary.animation.Animation;
    import org.allbinary.game.graphics.hud.BasicHud;
    import org.allbinary.game.health.Health;
    import org.allbinary.game.health.HealthListenerInterface;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.NoTimeDelayHelper;
    import org.allbinary.time.TimeDelayHelper;

    public class HealthHudWidget extends BasicHud implements PaintableInterface, HealthListenerInterface {
        private var healthScale:int = 0;
        public var animationInterface:Animation = null;
        public var healthInterface:Health = null;
        public var max:int = 0;
        private var xArray:Vector.<int> = null;
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var slowBeatTimeDelayHelper:TimeDelayHelper = null;
        private var mediumBeatTimeDelayHelper:TimeDelayHelper = null;
        private var fastBeatTimeDelayHelper:TimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsHealthHudWidget():void {
    
    
    
    this.max = 0;
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.timeDelayHelper = NoTimeDelayHelper.SINGLETON;
    this.slowBeatTimeDelayHelper = new TimeDelayHelper(1280);
    this.mediumBeatTimeDelayHelper = new TimeDelayHelper(640);
    this.fastBeatTimeDelayHelper = new TimeDelayHelper(320);
        }
    

    public function HealthHudWidget(animationInterface:Animation, healthInterface:Health, location:int, direction:int) {
        super(location, direction, 2, BasicColorFactory.getInstance().WHITE);
        this.initFieldsHealthHudWidget();
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.healthScale = int((int(this.healthInterface.getMaxHealth() / 6)) + 1);
        this.onHealthChange();
        this.updateMaxWidth = int(healthInterface.getMaxHealth() * 16);
        this.updateMaxHeight = 16;
        this.xArray = new Vector.<int>(30);
        this.update();
    }
    

    private function update():void {
        if (this.xArray != null) {
            for (var index:int = 0; index < this.xArray.length; index++) {
                this.xArray[index] = this.getX() + (int(index * 16));
            }
        }
    }
    

    override public function setX(x:int):void {
        super.setX(x);
        this.update();
    }
    

    public function onHealthChange():void {
        this.max = (int(this.healthInterface.getHealth() / this.healthScale));
        this.timeDelayHelper = NoTimeDelayHelper.SINGLETON;
        if (this.max <= 1 && this.healthInterface.isAlive()) {
            this.max = 1;
            if (int(this.healthScale - this.healthInterface.getHealth()) > int((int(this.healthScale * 2)) / 3)) {
                this.timeDelayHelper = this.slowBeatTimeDelayHelper;
            } else if (int(this.healthScale - this.healthInterface.getHealth()) > int(this.healthScale / 3)) {
                this.timeDelayHelper = this.mediumBeatTimeDelayHelper;
            } else {
                this.timeDelayHelper = this.fastBeatTimeDelayHelper;
            }
        }
    }
    

    public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        for (var index:int = 0; index < this.max; index++) {
            if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
                this.animationInterface.paintXY(graphics, this.xArray[index], this.getY());
            }
        }
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    }
}

