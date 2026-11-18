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
package org.allbinary.animation.transition.shake {

    public class NoShakeAnimationListener extends ShakeAnimationListener {
    private static var NO_SHAKE_ANIMATION_LISTENER_value:ShakeAnimationListener;
    private static var NO_SHAKE_ANIMATION_LISTENER_set:Boolean = false;
    public static function get NO_SHAKE_ANIMATION_LISTENER():ShakeAnimationListener {
        if (!NoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER_set) {
            NoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER_set = true;
            NoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER_value = new NoShakeAnimationListener();
        }
        return NoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER_value;
    }
    }
}

