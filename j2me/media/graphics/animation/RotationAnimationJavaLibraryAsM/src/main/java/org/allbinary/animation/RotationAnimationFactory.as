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
    import org.allbinary.game.configuration.GameConfigurationCentral;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.media.ScaleProperties;

    public class RotationAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
        private var totalAngle:int = 0;
        private var angleIncrement:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsRotationAnimationFactory():void {
    
    
        }
    

    public static function createFactory():RotationAnimationFactory {
        var totalAngle:int = AngleFactory.getInstance().TOTAL_ANGLE;
        return new RotationAnimationFactory(totalAngle, ((int((int(totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity()))) << 16) >> 16));
    }
    

    public function RotationAnimationFactory(totalAngle:int, angleIncrement:int) {
        super();
        this.initFieldsRotationAnimationFactory();
        this.totalAngle = totalAngle;
        this.angleIncrement = angleIncrement;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance1(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance());
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance1(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance());
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

