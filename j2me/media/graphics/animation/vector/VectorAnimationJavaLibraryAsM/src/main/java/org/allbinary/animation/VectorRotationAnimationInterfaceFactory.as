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
    import org.allbinary.logic.NullUtil;
    import org.allbinary.media.ScaleProperties;

    public class VectorRotationAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface {
        private var currentPoints:Vector.<Vector.<Vector.<int>>> = null;
        private var basicColor:BasicColor = null;
        public var animationBehaviorFactory:AnimationBehaviorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsVectorRotationAnimationInterfaceFactory():void {
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    
        }
    

    public function VectorRotationAnimationInterfaceFactory(currentPoints:Vector.<Vector.<Vector.<int>>>, basicColor:BasicColor, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsVectorRotationAnimationInterfaceFactory();
        this.currentPoints = currentPoints;
        this.setBasicColorP(basicColor);
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return new VectorRotationAnimation(this.currentPoints, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

