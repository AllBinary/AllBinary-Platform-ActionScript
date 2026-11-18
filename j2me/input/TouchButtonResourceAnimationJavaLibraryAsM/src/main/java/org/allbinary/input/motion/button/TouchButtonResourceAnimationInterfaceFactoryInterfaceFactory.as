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
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory;
    import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.image.ImageCache;
    import org.allbinary.image.ImageCacheFactory;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.os.OperatingSystemFactory;
    import org.allbinary.media.image.ImageCompleteUtil;

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
        var portion:int = 140;
        var loadingString:String = new StringMaker().append(this.toString()).append(" Loading: ").toString();
        var index:int = 0;
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        var touchButtonBlankResource:TouchButtonResource = TouchButtonBlankResource.getInstance();
        var touchButtonGenericActionResource:TouchButtonResource = TouchButtonGenericActionResource.getInstance();
        var touchButtonStartResource:TouchButtonResource = TouchButtonStartResource.getInstance();
        var touchButtonUpResource:TouchButtonResource = TouchButtonUpResource.getInstance();
        var touchButtonDownResource:TouchButtonResource = TouchButtonDownResource.getInstance();
        var touchButtonTurnLeftResource:TouchButtonResource = TouchButtonTurnLeftResource.getInstance();
        var touchButtonTurnRightResource:TouchButtonResource = TouchButtonTurnRightResource.getInstance();
        var touchButtonStrafeLeftResource:TouchButtonResource = TouchButtonStrafeLeftResource.getInstance();
        var touchButtonStrafeRightResource:TouchButtonResource = TouchButtonStrafeRightResource.getInstance();
        var touchButtonBlankResourceImage:Image = imageCache.getWithKey(touchButtonBlankResource.RESOURCE);
        var touchButtonGenericActionResourceImage:Image = imageCache.getWithKey(touchButtonGenericActionResource.RESOURCE);
        var touchButtonStartResourceImage:Image = imageCache.getWithKey(touchButtonStartResource.RESOURCE);
        var touchButtonUpResourceImage:Image = imageCache.getWithKey(touchButtonUpResource.RESOURCE);
        var touchButtonDownResourceImage:Image = imageCache.getWithKey(touchButtonDownResource.RESOURCE);
        var touchButtonTurnLeftResourceImage:Image = imageCache.getWithKey(touchButtonTurnLeftResource.RESOURCE);
        var touchButtonTurnRightResourceImage:Image = imageCache.getWithKey(touchButtonTurnRightResource.RESOURCE);
        var touchButtonStrafeLeftResourceImage:Image = imageCache.getWithKey(touchButtonStrafeLeftResource.RESOURCE);
        var touchButtonStrafeRightResourceImage:Image = imageCache.getWithKey(touchButtonStrafeRightResource.RESOURCE);
        var nullAnimationFactory:NullAnimationFactory = NullAnimationFactory.getFactoryInstance();
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT);
        }
        progressCanvas.addPortion(portion, loadingString, index++);
        var imageCompleteUtil:ImageCompleteUtil = ImageCompleteUtil.getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE);
        this.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonBlankResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE);
        this.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonGenericActionResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE);
        this.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()));
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE);
        this.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonUpResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE);
        this.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonDownResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE);
        this.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE);
        this.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonTurnRightResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE);
        this.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE);
        this.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory);
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            var touchButtonStartHintResource:Image = imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT);
            this.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()));
        } else {
            this.add(touchButtonStartResource.HINT, nullAnimationFactory);
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

