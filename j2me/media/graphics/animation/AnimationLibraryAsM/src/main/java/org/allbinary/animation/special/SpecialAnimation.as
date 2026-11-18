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
package org.allbinary.animation.special {
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.animation.IndexedAnimationBehavior;

    public class SpecialAnimation extends IndexedAnimation implements SpecialAnimationInterface {
    private static var NULL_SPECIAL_ANIMATION_value:SpecialAnimation;
    private static var NULL_SPECIAL_ANIMATION_set:Boolean = false;
    private static function get NULL_SPECIAL_ANIMATION():SpecialAnimation {
        if (!SpecialAnimation.NULL_SPECIAL_ANIMATION_set) {
            SpecialAnimation.NULL_SPECIAL_ANIMATION_set = true;
            SpecialAnimation.NULL_SPECIAL_ANIMATION_value = new SpecialAnimation(new IndexedAnimationBehavior(1, 250));
        }
        return SpecialAnimation.NULL_SPECIAL_ANIMATION_value;
    }
    

    public static function getInstance():SpecialAnimation {
        return SpecialAnimation.NULL_SPECIAL_ANIMATION;
    }
    

    public function SpecialAnimation(animationBehavior:AnimationBehavior) {
        super(animationBehavior);
    }
    

    override public function nextFrame():void {
        var indexedAnimationBehavior:IndexedAnimationBehavior = ((this.animationBehaviorP as IndexedAnimationBehavior));
        indexedAnimationBehavior.loopIndex++;
    }
    

    public function setLastFrame():void {
    }
    

    public function isComplete():Boolean {
        return false;
    }
    

    public function open():void {
    }
    

    public function close():void {
    }
    

    public function process():void {
    }
    }
}

