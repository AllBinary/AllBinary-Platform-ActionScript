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
package org.allbinary.game.layer {
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.input.NullPlayerGameInputComposite;
    import org.allbinary.game.input.PlayerGameInputCompositeInterface;
    import org.allbinary.graphics.ItemColorFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.LayerProcessor;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JInteger;

    public class AllBinaryGameLayerManager extends AllBinaryLayerManager {
    private static var NULL_ALLBINARY_LAYER_MANAGER_value:Object;
    private static var NULL_ALLBINARY_LAYER_MANAGER_set:Boolean = false;
    private static function get NULL_ALLBINARY_LAYER_MANAGER():Object {
        if (!AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER_set) {
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER_set = true;
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER_value;
    }
    private static function set NULL_ALLBINARY_LAYER_MANAGER(value:Object):void {
        AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER_set = true;
        AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER_value = value;
    }
    private static var ID_value:*;
    private static var ID_set:Boolean = false;
    public static function get ID():* {
        if (!AllBinaryGameLayerManager.ID_set) {
            AllBinaryGameLayerManager.ID_set = true;
            AllBinaryGameLayerManager.ID_value = SmallIntegerSingletonFactory.getInstance().getAt(22);
        }
        return AllBinaryGameLayerManager.ID_value;
    }
        private var backgroundBasicColor:BasicColor = null;
        private var foregroundBasicColor:BasicColor = null;
        private var gameInfo:GameInfo = null;
        private var playerGameInputCompositeInterface:PlayerGameInputCompositeInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryGameLayerManager():void {
    
    
    
    this.playerGameInputCompositeInterface = NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE;
        }
    

    public static function getNullInstance():AllBinaryGameLayerManager {
        if (AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER == NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = new AllBinaryGameLayerManager(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo.NONE);
        }
        return (AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER as AllBinaryGameLayerManager);
    }
    

    public function AllBinaryGameLayerManager(backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor, gameInfo:GameInfo) {
        super();
        this.initFieldsAllBinaryGameLayerManager();
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundBasicColor = foregroundBasicColor;
        var itemColorFactory:ItemColorFactory = ItemColorFactory.getInstance();
        itemColorFactory.INVERT_PAINT = this.backgroundBasicColor.intValue();
        itemColorFactory.PAINT = this.foregroundBasicColor.intValue();
        this.gameInfo = gameInfo;
    }
    

    public function getLayerManager():AllBinaryLayerManager {
        return this;
    }
    

    public function init():void {
    }
    

    public function getBackgroundBasicColor():BasicColor {
        return this.backgroundBasicColor;
    }
    

    public function setBackgroundBasicColor(backgroundBasicColor:BasicColor):void {
        this.backgroundBasicColor = backgroundBasicColor;
        ItemColorFactory.getInstance().INVERT_PAINT = this.backgroundBasicColor.intValue();
    }
    

    public function getForegroundBasicColor():BasicColor {
        return this.foregroundBasicColor;
    }
    

    public function setForegroundBasicColor(foregroundBasicColor:BasicColor):void {
        this.foregroundBasicColor = foregroundBasicColor;
        ItemColorFactory.getInstance().PAINT = this.foregroundBasicColor.intValue();
    }
    

    public function getGameInfo():GameInfo {
        return this.gameInfo;
    }
    

    public function setGameInfo(gameInfo:GameInfo):void {
        this.gameInfo = gameInfo;
    }
    

    public function setLayerProcessorList(list:BasicArrayList):void {
        var layerProcessorInterfaceArray:Vector.<LayerProcessor> = new Vector.<LayerProcessor>(list.size());
        var size:int = layerProcessorInterfaceArray.length;
        for (var index:int = 0; index < size; index++) {
            layerProcessorInterfaceArray[index] = (list.objectArray[index] as LayerProcessor);
        }
        this.setLayerProcessorArray(layerProcessorInterfaceArray);
    }
    

    public function setPlayerGameInputCompositeInterface(playerGameInputCompositeInterface:PlayerGameInputCompositeInterface):void {
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface;
    }
    

    public function getPlayerGameInputCompositeInterface():PlayerGameInputCompositeInterface {
        return this.playerGameInputCompositeInterface;
    }
    }
}

