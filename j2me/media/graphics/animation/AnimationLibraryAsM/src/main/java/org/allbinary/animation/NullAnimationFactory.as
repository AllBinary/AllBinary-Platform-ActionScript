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
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.media.ScaleProperties;

    public class NullAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    private static var NULL_NOT_FOR_USE_ANIMATION_FACTORY_value:NullAnimationFactory;
    private static var NULL_NOT_FOR_USE_ANIMATION_FACTORY_set:Boolean = false;
    public static function get NULL_NOT_FOR_USE_ANIMATION_FACTORY():NullAnimationFactory {
        if (!NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY_set) {
            NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY_set = true;
            NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY_value = new NullAnimationFactory();
        }
        return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY_value;
    }
    public static function set NULL_NOT_FOR_USE_ANIMATION_FACTORY(value:NullAnimationFactory):void {
        NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY_set = true;
        NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY_value = value;
    }
    private static var NULL_ANIMATION_FACTORY_value:NullAnimationFactory;
    private static var NULL_ANIMATION_FACTORY_set:Boolean = false;
    private static function get NULL_ANIMATION_FACTORY():NullAnimationFactory {
        if (!NullAnimationFactory.NULL_ANIMATION_FACTORY_set) {
            NullAnimationFactory.NULL_ANIMATION_FACTORY_set = true;
            NullAnimationFactory.NULL_ANIMATION_FACTORY_value = new NullAnimationFactory();
        }
        return NullAnimationFactory.NULL_ANIMATION_FACTORY_value;
    }
    private static function set NULL_ANIMATION_FACTORY(value:NullAnimationFactory):void {
        NullAnimationFactory.NULL_ANIMATION_FACTORY_set = true;
        NullAnimationFactory.NULL_ANIMATION_FACTORY_value = value;
    }
        private var NULL_ANIMATION:Animation = null;
        public var EMPTY_ARRAY:Vector.<Animation> = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullAnimationFactory():void {
    this.NULL_ANIMATION = new NullAnimationFactory_1(this);
    this.EMPTY_ARRAY = new Vector.<Animation>(0);
        }
    

    public function NullAnimationFactory() {
        super();
        this.initFieldsNullAnimationFactory();
    }
    

    public static function getFactoryInstance():NullAnimationFactory {
        return NullAnimationFactory.NULL_ANIMATION_FACTORY;
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

