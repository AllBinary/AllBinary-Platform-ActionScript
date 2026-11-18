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
package org.allbinary.animation.transition {
    import java.lang.JRunnable;

    public class RunAtEndAnimationListener implements AnimationListenerInterface {
        public var runnable:JRunnable = null;

        // Java field initializers run after the base constructor
        private function initFieldsRunAtEndAnimationListener():void {
    
        }
    

    public function RunAtEndAnimationListener(runnable:JRunnable) {
        super();
        this.initFieldsRunAtEndAnimationListener();
        this.runnable = runnable;
    }
    

    public function onPlatformAnimationStart():void {
    }
    

    public function onPlatformAnimationEnd():void {
    }
    

    public function onPlatformAnimationRepeat():void {
    }
    }
}

