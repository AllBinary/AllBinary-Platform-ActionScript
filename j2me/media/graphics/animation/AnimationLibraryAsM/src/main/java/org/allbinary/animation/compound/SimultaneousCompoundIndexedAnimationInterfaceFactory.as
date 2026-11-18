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

    public class SimultaneousCompoundIndexedAnimationInterfaceFactory extends CompoundAnimationInterfaceFactory {
    

    public function SimultaneousCompoundIndexedAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray:Vector.<AnimationInterfaceFactoryInterface>, animationBehaviorFactory:AnimationBehaviorFactory) {
        super(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
    }
    

    override public function createArray(size:int):Vector.<Animation> {
        return new Vector.<Animation>(size);
    }
    

    override public function createAnimation(animationArray:Vector.<Animation>):Animation {
        return new SimultaneousCompoundIndexedAnimation(animationArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
    }
}

