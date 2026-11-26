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
package org.allbinary.game.init {
    import javax.microedition.lcdui.CommandListener;
    import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.game.configuration.GameConfigurationCentral;
    import org.allbinary.game.configuration.event.ChangedGameFeatureListener;
    import org.allbinary.game.configuration.feature.InputFeatureFactory;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory;
    import org.allbinary.game.resource.ResourceInitialization;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.image.GameFeatureImageCacheFactory;
    import org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput;
    import org.allbinary.input.motion.button.BasicTouchInputFactory;
    import org.allbinary.input.motion.button.CancelTouchButtonInputFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;

    public class BaseGameInitialization implements GameInitializationInterface {
    private static var NULL_BASE_GAME_INITIALIZATION_value:BaseGameInitialization;
    private static var NULL_BASE_GAME_INITIALIZATION_set:Boolean = false;
    public static function get NULL_BASE_GAME_INITIALIZATION():BaseGameInitialization {
        if (!BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION_set) {
            BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION_set = true;
            BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION_value = new BaseGameInitialization(new Vector.<ResourceInitialization>(0), 0);
        }
        return BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION_value;
    }
        public var resourceInitializationArray:Vector.<ResourceInitialization> = null;
        private var portion:int = 0;
        private var initialized:Boolean = false;
        public var EARLY_RESOURCES:int = 0;
        public var GAME_RESOURCES:int = 0;
        public var EARLY_CHANGABLE_RESOURCES:int = 0;
        public var GAME_CHANGABLE_RESOURCES:int = 0;
        private var gameInitialized:Boolean = false;
        private var allLoaded:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsBaseGameInitialization():void {
    
    
    this.initialized = false;
    this.EARLY_RESOURCES = 0;
    this.GAME_RESOURCES = 1;
    this.EARLY_CHANGABLE_RESOURCES = 2;
    this.GAME_CHANGABLE_RESOURCES = 3;
    this.gameInitialized = false;
    this.allLoaded = false;
        }
    

    public function BaseGameInitialization(resourceInitializationArray:Vector.<ResourceInitialization>, portion:int) {
        super();
        this.initFieldsBaseGameInitialization();
        this.resourceInitializationArray = resourceInitializationArray;
        this.portion = portion;
    }
    

    public function initKey(portion:int):void {
    }
    

    public function initKeyMapping(abeClientInformation:AbeClientInformationInterface, portion:int):void {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(InputFeatureFactory.getInstance().INPUT_MAPPING)) {
            PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation);
            ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys");
            ChangedGameFeatureListener.getInstance().remove(InputFeatureFactory.getInstance().INPUT_MAPPING);
        }
    }
    

    public function init(abeClientInformation:AbeClientInformationInterface, commandListener:CommandListener, level:int):void {
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (!this.isInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() || level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())) {
            var localPortion:int = 40;
            if (level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
                localPortion = 8;
            }
            this.setInitialized(true);
            this.initKey(this.getPortion());
            this.initKeyMapping(abeClientInformation, this.getPortion());
            GameKeyEventFactory.getInstance().init();
            var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(localPortion, "Game Key Events");
            BasicTouchInputFactory.getInstance().init(PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
            CancelTouchButtonInputFactory.getInstance();
            progressCanvas.addNormalPortion(localPortion, "Touch Input");
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().init();
            progressCanvas.addNormalPortion(localPortion, "Motion Input");
            GameFeatureImageCacheFactory.init();
            progressCanvas.addNormalPortion(localPortion, "Image Cache");
            this.resourceInitializationArray[this.EARLY_RESOURCES].init();
        }
    }
    

    public function resourceInitialization(level:int):void {
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
            this.clearResources();
            this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init();
        }
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            if (this.allLoaded) {
                this.clearResources();
            }
            if (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0) {
                this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init();
            }
            this.resourceInitializationArray[this.GAME_CHANGABLE_RESOURCES].init();
            this.allLoaded = true;
        }
    }
    

    public function resourceAnimationChange():Boolean {
        var changedGameFeatureListener:ChangedGameFeatureListener = ChangedGameFeatureListener.getInstance();
        var gameConfigurationCentral:GameConfigurationCentral = GameConfigurationCentral.getInstance();
        if (changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)) {
            return true;
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            return true;
        }
        return false;
    }
    

    private function clearResources():void {
        this.allLoaded = false;
        GameFeatureImageCacheFactory.releaseAll();
        var featuredAnimationInterfaceFactoryInterfaceFactory:FeaturedAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredAnimationInterfaceFactoryInterfaceFactory.clear();
        FeaturedResourceRelativeRelationshipFactory.getInstance().clear();
    }
    

    public function setGameInitialized(gameInitialized:Boolean):void {
        this.gameInitialized = gameInitialized;
    }
    

    public function isGameInitialized():Boolean {
        return this.gameInitialized;
    }
    

    public function getPortion():int {
        return this.portion;
    }
    

    public function setInitialized(initialized:Boolean):void {
        this.initialized = initialized;
    }
    

    public function isInitialized():Boolean {
        return this.initialized;
    }
    }
}

