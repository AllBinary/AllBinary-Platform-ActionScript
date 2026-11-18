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
package org.allbinary.game.health {
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.layer.AllBinaryLayer;

    public class HealthBar extends Paintable implements HealthListenerInterface {
        private var animationInterface:HealthBarAnimation = null;
        private var healthInterface:HealthInterface = null;
        public var allbinaryLayer:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsHealthBar():void {
    
    
    
        }
    

    public function HealthBar(layerInterface:AllBinaryLayer, healthInterface:Health, animationInterface:HealthBarAnimation, direction:int) {
        super();
        this.initFieldsHealthBar();
        this.allbinaryLayer = layerInterface;
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.onHealthChange();
    }
    

    public function onHealthChange():void {
        this.animationInterface.onHealthChange(int(int(this.healthInterface.getHealth() * this.allbinaryLayer.getWidth()) / this.healthInterface.getMaxHealth()));
    }
    

    override public function paint(graphics:Graphics):void {
        this.animationInterface.paintXY(graphics, 0, 0);
    }
    

    override public function paintThreed(graphics:Graphics):void {
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
    }
}

