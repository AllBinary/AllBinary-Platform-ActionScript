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
package org.allbinary.graphics.form {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.logic.system.security.licensing.LockedResources;
    import org.allbinary.logic.system.security.licensing.LockedUtil;

    public class LockablePaintable extends ItemPaintable {
        private var animation:Animation = null;
        private var lockedIndex:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsLockablePaintable():void {
    this.animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get_(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance1(0);
    
        }
    

    public function LockablePaintable(lockedIndex:int) {
        super();
        this.initFieldsLockablePaintable();
        this.lockedIndex = lockedIndex;
    }
    

    override public function paint(graphics:Graphics, currentIndex:int, x:int, y:int):void {
        if (LockedUtil.getInstance().isLocked() && currentIndex >= this.getLockedIndex()) {
            this.getAnimation().paintXY(graphics, x, y);
        }
    }
    

    public function getLockedIndex():int {
        return this.lockedIndex;
    }
    

    public function getAnimation():Animation {
        return this.animation;
    }
    }
}

