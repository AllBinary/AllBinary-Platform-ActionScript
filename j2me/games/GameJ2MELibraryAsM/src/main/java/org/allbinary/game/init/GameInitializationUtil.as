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
    import org.allbinary.game.configuration.event.ChangedGameFeatureListener;
    import org.allbinary.game.configuration.event.GameInitializedEvent;
    import org.allbinary.game.configuration.event.GameInitializedEventHandler;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;

    public class GameInitializationUtil {
    private static var instance_value:GameInitializationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():GameInitializationUtil {
        if (!GameInitializationUtil.instance_set) {
            GameInitializationUtil.instance_set = true;
            GameInitializationUtil.instance_value = new GameInitializationUtil();
        }
        return GameInitializationUtil.instance_value;
    }
        public var EVENT:GameInitializedEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameInitializationUtil():void {
    this.EVENT = new GameInitializedEvent(this);
        }

        public function GameInitializationUtil() {
            super();
            this.initFieldsGameInitializationUtil();
        }
    

    public function initDemo(abeClientInformation:AbeClientInformationInterface, canvas:MyCanvas, gameInitializationInterfaceFactoryInterface:BasicBuildGameInitializerFactory):void {
        var mainFeatureFactory:MainFeatureFactory = MainFeatureFactory.getInstance();
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC)) {
            var gameInitializationInterface:GameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            var features:Features = Features.getInstance();
            if (features.isFeature(mainFeatureFactory.LOAD_ALL)) {
                this.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
            } else if (features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)) {
                var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel());
                this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY);
            } else {
                throw new JException("Exception", "No Loading Feature Available");
            }
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT);
        }
    }
    

    public function initGame(abeClientInformation:AbeClientInformationInterface, canvas:MyCanvas, gameInitializationInterfaceFactoryInterface:BasicBuildGameInitializerFactory):void {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            var gameInitializationInterface:GameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel());
            this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL);
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT);
            ChangedGameFeatureListener.getInstance().remove(MainFeatureFactory.getInstance().STATIC);
        }
    }
    

    public static function getInstance():GameInitializationUtil {
        return GameInitializationUtil.instance;
    }
    }
}

