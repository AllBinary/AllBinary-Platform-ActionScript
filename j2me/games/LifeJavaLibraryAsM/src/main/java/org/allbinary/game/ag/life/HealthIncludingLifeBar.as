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
package org.allbinary.game.ag.life {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.game.health.Health;
    import org.allbinary.game.health.HealthBarAnimation;
    import org.allbinary.game.health.HealthBarTwodAnimation;
    import org.allbinary.game.health.HealthInterface;
    import org.allbinary.game.health.HealthListenerInterface;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.layer.AllBinaryLayer;

    public class HealthIncludingLifeBar extends Paintable implements HealthListenerInterface {
        private var animationInterface:HealthBarAnimation = null;
        private var life:Life = null;
        private var healthInterface:HealthInterface = null;
        public var allbinaryLayer:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsHealthIncludingLifeBar():void {
    
    
    
    
        }
    

    public static function createHealthIncludingLifeBar(layerInterface:AllBinaryLayer, life:Life, healthInterface:Health, location:int, direction:int):HealthIncludingLifeBar {
        return new HealthIncludingLifeBar(layerInterface, life, healthInterface, new HealthBarTwodAnimation(layerInterface, location), direction);
    }
    

    public function HealthIncludingLifeBar(layerInterface:AllBinaryLayer, life:Life, healthInterface:Health, animationInterface:HealthBarAnimation, direction:int) {
        super();
        this.initFieldsHealthIncludingLifeBar();
        this.allbinaryLayer = layerInterface;
        this.animationInterface = animationInterface;
        this.life = life;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.onHealthChange();
    }
    

    public function onHealthChange(...args):void {
        if (args.length == 0) {
            this.onHealthChange_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "onHealthChange");
    }

    private function onHealthChange_jo0():void {
        this.animationInterface.onHealthChange(int((int((int(this.healthInterface.getHealth() + (int(this.healthInterface.getMaxHealth() * this.life.get_())))) * this.allbinaryLayer.getWidth())) / (int(this.healthInterface.getMaxHealth() + (int(this.healthInterface.getMaxHealth() * this.life.getStartLives()))))));
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.animationInterface.paintXY(graphics, 0, 0);
    }
    

    override public function paintThreed(graphics:Graphics):void {
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
    }
}

