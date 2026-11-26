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
package org.allbinary.game.combat.canvas {
    import javax.microedition.lcdui.CommandListener;
    import org.allbinary.game.combat.destroy.DestroyedLayerProcessor;
    import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool;
    import org.allbinary.game.combat.destroy.event.DestroyedEventHandler;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureFactory;
    import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas;
    import org.allbinary.game.init.BasicBuildGameInitializerFactory;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.layer.drop.DropLayerProcessor;
    import org.allbinary.game.layer.identification.GroupLayerManagerListener;
    import org.allbinary.game.score.HighScoresFactoryInterface;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.layer.BasicLayerProcessor;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;

    public class CombatGameCanvas extends AllBinaryGameCanvas {
    private static var basicLayerProcessor_value:Vector.<BasicLayerProcessor>;
    private static var basicLayerProcessor_set:Boolean = false;
    public static function get basicLayerProcessor():Vector.<BasicLayerProcessor> {
        if (!CombatGameCanvas.basicLayerProcessor_set) {
            CombatGameCanvas.basicLayerProcessor_set = true;
            CombatGameCanvas.basicLayerProcessor_value = new Vector.<BasicLayerProcessor>(0);
        }
        return CombatGameCanvas.basicLayerProcessor_value;
    }
    public static function set basicLayerProcessor(value:Vector.<BasicLayerProcessor>):void {
        CombatGameCanvas.basicLayerProcessor_set = true;
        CombatGameCanvas.basicLayerProcessor_value = value;
    }
    

    public function CombatGameCanvas(cmdListener:CommandListener, gameLayerManager:AllBinaryGameLayerManager, highScoresFactoryInterface:HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface:BasicBuildGameInitializerFactory, buffered:Boolean) {
        super(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered);
    }
    

    private function CombatGameCanvas_init():void {
        DestroyEventCircularStaticPool.getInstance().init(this);
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events");
    }
    

    override public function initApp(abeClientInformation:AbeClientInformationInterface):void {
        this.CombatGameCanvas_init();
        super.initApp(abeClientInformation);
    }
    

    public function initConfigurablePortion(portion:int):void {
        DestroyedLayerProcessor.init();
        ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors");
        var features:Features = Features.getInstance();
        var gameFeatureFactory:GameFeatureFactory = GameFeatureFactory.getInstance();
        if (features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)) {
            CombatGameCanvas.basicLayerProcessor = new Vector.<BasicLayerProcessor>(2);
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance();
            CombatGameCanvas.basicLayerProcessor[1] = DropLayerProcessor.getInstance();
        } else {
            CombatGameCanvas.basicLayerProcessor = new Vector.<BasicLayerProcessor>(1);
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance();
        }
    }
    

    override public function processPlayingGame():void {
        super.processPlayingGame();
        for (var index:int = CombatGameCanvas.basicLayerProcessor.length; --index >= 0; ) {
            CombatGameCanvas.basicLayerProcessor[index].process(this.gameLayerManager);
        }
    }
    

    override public function cleanupGame():void {
        super.cleanupGame();
        for (var index:int = CombatGameCanvas.basicLayerProcessor.length; --index >= 0; ) {
            CombatGameCanvas.basicLayerProcessor[index].getList().clear();
        }
        GroupLayerManagerListener.getInstance().clear();
        GroupLayerManagerListener.getInstance().log();
        DestroyedEventHandler.getInstance().removeAllListeners();
        this.cleanupManager();
    }
    

    public function cleanupManager():void {
        this.gameLayerManager.cleanup();
    }
    }
}

