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

    public class BaseAnimationInterfaceFactoryInterfaceComposite implements AnimationInterfaceFactoryInterface {
        private var basicAnimationInterfaceFactoryInterfaceArray:Vector.<BasicAnimationInterfaceFactoryInterface> = null;

        // Java field initializers run after the base constructor
        private function initFieldsBaseAnimationInterfaceFactoryInterfaceComposite():void {
    
        }
    

    public function BaseAnimationInterfaceFactoryInterfaceComposite(basicAnimationInterfaceFactoryInterfaceArray:Vector.<BasicAnimationInterfaceFactoryInterface>) {
        super();
        this.initFieldsBaseAnimationInterfaceFactoryInterfaceComposite();
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    public function getBasicAnimationInterfaceFactoryInterfaceArray():Vector.<BasicAnimationInterfaceFactoryInterface> {
        return this.basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public function setBasicAnimationInterfaceFactoryInterfaceArray(basicAnimationInterfaceFactoryInterfaceArray:Vector.<BasicAnimationInterfaceFactoryInterface>):void {
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

