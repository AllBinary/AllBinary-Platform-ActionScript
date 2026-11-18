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
package org.allbinary.input.motion.button {
    import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.image.ImageCache;
    import org.allbinary.image.ImageCacheFactory;
    import org.allbinary.logic.StdUtil;

    public class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory extends BaseResourceAnimationInterfaceFactoryInterfaceFactory {
    

    public static function createFactory():TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {
        return new TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations");
    }
    

    public function TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(name:String) {
        super(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable());
    }
    

    override public function init(level:int):void {
        this.initImageCache(ImageCacheFactory.getInstance(), level);
    }
    

    override public function initImageCache(imageCache:ImageCache, level:int):void {
        if (this.isInitialized()) {
            return;
        }
        super.init(level);
    }
    

    override public function isLoadingLevel(level:int):Boolean {
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()) {
            return true;
        } else {
            return super.isLoadingLevel(level);
        }
    }
    

    override public function isFeature():Boolean {
        if (!Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true;
        } else {
            return false;
        }
    }
    }
}

