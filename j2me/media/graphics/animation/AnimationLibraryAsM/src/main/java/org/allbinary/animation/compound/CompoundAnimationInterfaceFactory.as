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
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.media.ScaleProperties;

    public class CompoundAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface {
        public var basicAnimationInterfaceFactoryInterfaceArrayP:Vector.<AnimationInterfaceFactoryInterface> = null;
        public var animationBehaviorFactory:AnimationBehaviorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompoundAnimationInterfaceFactory():void {
    
    
        }
    

    public function CompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray:Vector.<AnimationInterfaceFactoryInterface>, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsCompoundAnimationInterfaceFactory();
        this.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public function getInstance1(instanceId:int):Animation {
        var size:int = this.basicAnimationInterfaceFactoryInterfaceArrayP.length;
        var animationInterfaceArray:Vector.<Animation> = this.createArray(size);
        for (var index:int = 0; index < size; index++) {
            animationInterfaceArray[index] = this.basicAnimationInterfaceFactoryInterfaceArrayP[index].getInstance1(instanceId);
        }
        return this.createAnimation(animationInterfaceArray);
    }
    

    public function createArray(size:int):Vector.<Animation> {
        return NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY;
    }
    

    public function createAnimation(animationInterfaceArray:Vector.<Animation>):Animation {
        return NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    public function getBasicAnimationInterfaceFactoryInterfaceArray():Vector.<AnimationInterfaceFactoryInterface> {
        return this.basicAnimationInterfaceFactoryInterfaceArrayP;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
        var size:int = this.basicAnimationInterfaceFactoryInterfaceArrayP.length;
        for (var index:int = 0; index < size; index++) {
            this.basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties);
        }
    }
    }
}

