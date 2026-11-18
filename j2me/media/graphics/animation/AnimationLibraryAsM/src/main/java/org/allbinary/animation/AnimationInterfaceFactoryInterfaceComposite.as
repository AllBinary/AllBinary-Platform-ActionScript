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

    public class AnimationInterfaceFactoryInterfaceComposite implements AnimationInterfaceFactoryInterface {
        private var animationInterfaceFactoryInterfaceArray:Vector.<AnimationInterfaceFactoryInterface> = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnimationInterfaceFactoryInterfaceComposite():void {
    
        }
    

    public function AnimationInterfaceFactoryInterfaceComposite(basicAnimationInterfaceFactoryInterfaceArray:Vector.<AnimationInterfaceFactoryInterface>) {
        super();
        this.initFieldsAnimationInterfaceFactoryInterfaceComposite();
        this.animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    public function getAnimationInterfaceFactoryInterfaceArray():Vector.<AnimationInterfaceFactoryInterface> {
        return this.animationInterfaceFactoryInterfaceArray;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

