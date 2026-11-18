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
    import org.allbinary.media.ScaleProperties;

    public class SingletonAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
        private var animationInterface:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsSingletonAnimationInterfaceFactory():void {
    
        }
    

    public function SingletonAnimationInterfaceFactory(animationInterface:Animation) {
        super();
        this.initFieldsSingletonAnimationInterfaceFactory();
        this.animationInterface = animationInterface;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return this.animationInterface;
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        return this.animationInterface;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

