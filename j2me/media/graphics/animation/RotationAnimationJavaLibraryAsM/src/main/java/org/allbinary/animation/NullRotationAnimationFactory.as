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

    public class NullRotationAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    private static var NULL_ROTATION_ANIMATION_FACTORY_value:NullRotationAnimationFactory;
    private static var NULL_ROTATION_ANIMATION_FACTORY_set:Boolean = false;
    private static function get NULL_ROTATION_ANIMATION_FACTORY():NullRotationAnimationFactory {
        if (!NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY_set) {
            NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY_set = true;
            NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY_value = new NullRotationAnimationFactory();
        }
        return NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY_value;
    }
        public var NULL_ROTATION_ANIMATION_ARRAY:Vector.<RotationAnimation> = null;
        private var NULL_ANIMATION:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullRotationAnimationFactory():void {
    this.NULL_ROTATION_ANIMATION_ARRAY = new Vector.<RotationAnimation>(0);
    this.NULL_ANIMATION = new NullRotationAnimation2();
        }
    

    public function NullRotationAnimationFactory() {
        super();
        this.initFieldsNullRotationAnimationFactory();
    }
    

    public static function getFactoryInstance():NullRotationAnimationFactory {
        return NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return this.NULL_ANIMATION;
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        return this.NULL_ANIMATION;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

