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
package org.allbinary.animation.image {
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.cache.CacheableInterface;

    public class ImageArrayRotationAnimationCacheable extends AdjustedImageArrayRotationAnimation implements CacheableInterface {
    

    public function ImageArrayRotationAnimationCacheable(anyType:Object, animationBehavior:AnimationBehavior) {
        super(((anyType as ImageArrayRotationAnimationInfo)).getImageArray(), ((anyType as ImageArrayRotationAnimationInfo)).getAngleInfoP(), ((anyType as ImageArrayRotationAnimationInfo)).getTotalAngle(), ((anyType as ImageArrayRotationAnimationInfo)).getDx(), ((anyType as ImageArrayRotationAnimationInfo)).getDy(), animationBehavior);
    }
    

    public function getKey():Object {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    override public function toString():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    }
}

