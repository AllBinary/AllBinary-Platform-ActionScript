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
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;

    public class VectorExplosionAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
        private var vectorExplosionGenerator:VectorExplosionGenerator = null;
        private var basicColor:BasicColor = null;
        public var animationBehaviorFactory:AnimationBehaviorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsVectorExplosionAnimationFactory():void {
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance();
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    
        }
    

    public function VectorExplosionAnimationFactory(basicColor:BasicColor, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsVectorExplosionAnimationFactory();
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.setBasicColorP(basicColor);
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        var vectorRotationAnimationInterface:VectorAnimationInterface = (animationInterface as VectorAnimationInterface);
        var frame:int = vectorRotationAnimationInterface.getFrame();
        var framePoints:Vector.<Vector.<int>> = vectorRotationAnimationInterface.getPoints(frame);
        var points:Vector.<Vector.<Vector.<int>>> = this.vectorExplosionGenerator.getInstance3(framePoints, 6, this.vectorExplosionGenerator.ROTATION);
        return new VectorRotationAnimation(points, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    private function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    

    private function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    }
}

