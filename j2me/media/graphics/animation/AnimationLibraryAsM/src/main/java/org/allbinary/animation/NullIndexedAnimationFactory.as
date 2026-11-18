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

    public class NullIndexedAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    private static var NULL_INDEXED_ANIMATION_ARRAY_value:Vector.<IndexedAnimation>;
    private static var NULL_INDEXED_ANIMATION_ARRAY_set:Boolean = false;
    public static function get NULL_INDEXED_ANIMATION_ARRAY():Vector.<IndexedAnimation> {
        if (!NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_ARRAY_set) {
            NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_ARRAY_set = true;
            NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_ARRAY_value = new Vector.<IndexedAnimation>(0);
        }
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_ARRAY_value;
    }
    private static var NULL_INDEXED_ANIMATION_FACTORY_value:NullIndexedAnimationFactory;
    private static var NULL_INDEXED_ANIMATION_FACTORY_set:Boolean = false;
    private static function get NULL_INDEXED_ANIMATION_FACTORY():NullIndexedAnimationFactory {
        if (!NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY_set) {
            NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY_set = true;
            NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY_value = new NullIndexedAnimationFactory();
        }
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY_value;
    }
        private var NULL_ANIMATION:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullIndexedAnimationFactory():void {
    this.NULL_ANIMATION = new NullIndexedAnimationInner();
        }
    

    public function NullIndexedAnimationFactory() {
        super();
        this.initFieldsNullIndexedAnimationFactory();
    }
    

    public static function getFactoryInstance():NullIndexedAnimationFactory {
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY;
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

