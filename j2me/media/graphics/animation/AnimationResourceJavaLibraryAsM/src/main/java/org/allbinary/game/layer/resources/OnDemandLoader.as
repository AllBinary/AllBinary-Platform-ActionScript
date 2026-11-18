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
package org.allbinary.game.layer.resources {
    import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
    import org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.image.ImageCache;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;

    public class OnDemandLoader {
        private var onDemandResourcesFactory:OnDemandResourcesFactory = null;
        private var gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory:GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = null;
        private var resourceAnimationInterfaceFactoryInterfaceFactory:BaseResourceAnimationInterfaceFactoryInterfaceFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsOnDemandLoader():void {
    
    
    
        }
    

    public function OnDemandLoader(onDemandResourcesFactory:OnDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory:GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory:BaseResourceAnimationInterfaceFactoryInterfaceFactory) {
        super();
        this.initFieldsOnDemandLoader();
        this.onDemandResourcesFactory = onDemandResourcesFactory;
        this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        this.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory;
    }
    

    public function init(imageCache:ImageCache, level:int, loadingString:String):void {
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (Features.getInstance().isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            if (this.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized()) {
                return;
            }
            this.initAll(imageCache, loadingString);
        } else if (level != resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            var layerPlacementInterfaceBasicArrayListFactoryInterface:LayerPlacementInterfaceBasicArrayListFactoryInterface = this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance1(level);
            this.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString);
        }
    }
    

    private function initAll(imageCache:ImageCache, loadingString:String):void {
        var index:int = 0;
        var portion:int = 120;
        var onDemandResources:OnDemandResources = null;
        for (var onDemandIndex:int = this.onDemandResourcesFactory.size(); --onDemandIndex >= 0; ) {
            onDemandResources = this.onDemandResourcesFactory.remove(onDemandIndex);
            if (onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
    

    private function initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface:LayerPlacementInterfaceBasicArrayListFactoryInterface, imageCache:ImageCache, level:int, loadingString:String):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var portion:int = 120;
        var index:int = 0;
        var onDemandArray:Vector.<int> = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources();
        PreLogUtil.put(new StringMaker().append(commonStrings.START).appendint(onDemandArray.length).toString(), this, "initLevel");
        var onDemandResources:OnDemandResources = null;
        for (var onDemandIndex:int = onDemandArray.length; --onDemandIndex >= 0; ) {
            onDemandResources = this.onDemandResourcesFactory.remove(onDemandArray[onDemandIndex]);
            if (onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
    }
}

