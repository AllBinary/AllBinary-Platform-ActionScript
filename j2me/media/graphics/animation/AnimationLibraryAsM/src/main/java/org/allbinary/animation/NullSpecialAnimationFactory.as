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
    import org.allbinary.animation.special.SpecialAnimation;
    import org.allbinary.media.ScaleProperties;

    public class NullSpecialAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    private static var NULL_SPECIAL_ANIMATION_FACTORY_value:NullSpecialAnimationFactory;
    private static var NULL_SPECIAL_ANIMATION_FACTORY_set:Boolean = false;
    private static function get NULL_SPECIAL_ANIMATION_FACTORY():NullSpecialAnimationFactory {
        if (!NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY_set) {
            NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY_set = true;
            NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY_value = new NullSpecialAnimationFactory();
        }
        return NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY_value;
    }
    

    public function NullSpecialAnimationFactory() {
        super();
    }
    

    public static function getFactoryInstance():NullSpecialAnimationFactory {
        return NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return SpecialAnimation.getInstance();
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        return SpecialAnimation.getInstance();
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

