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
package org.allbinary.animation.compound {
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.AnimationInterfaceFactoryInterface;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.media.ScaleProperties;

    public class SimultaneousCompoundIndexAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface {
        private var basicAnimationInterfaceFactoryInterfaceArray:Vector.<AnimationInterfaceFactoryInterface> = null;
        private var animationBehaviorFactory:AnimationBehaviorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory():void {
    
    
        }
    

    public function SimultaneousCompoundIndexAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray:Vector.<AnimationInterfaceFactoryInterface>, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory();
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public function getInstance1(instanceId:int):Animation {
        var size:int = this.basicAnimationInterfaceFactoryInterfaceArray.length;
        var animationInterfaceArray:Vector.<IndexedAnimation> = new Vector.<IndexedAnimation>(size);
        for (var index:int = 0; index < size; index++) {
            animationInterfaceArray[index] = (this.basicAnimationInterfaceFactoryInterfaceArray[index].getInstance1(instanceId) as IndexedAnimation);
        }
        return this.getOrCreate(animationInterfaceArray);
    }
    

    public function getOrCreate(animationInterfaceArray:Vector.<IndexedAnimation>):Animation {
        return new SimultaneousCompoundIndexAnimation(animationInterfaceArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public function getBasicAnimationInterfaceFactoryInterfaceArray():Vector.<AnimationInterfaceFactoryInterface> {
        return this.basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

