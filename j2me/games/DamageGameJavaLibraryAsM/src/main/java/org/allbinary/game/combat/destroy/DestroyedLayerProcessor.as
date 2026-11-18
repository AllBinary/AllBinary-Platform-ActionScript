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
package org.allbinary.game.combat.destroy {
    import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool;
    import org.allbinary.game.combat.destroy.event.DestroyedEvent;
    import org.allbinary.game.combat.destroy.event.DestroyedEventHandler;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.BasicLayerProcessor;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class DestroyedLayerProcessor extends BasicLayerProcessor {
    private static var DESTROYED_LAYER_PROCESSOR_value:BasicLayerProcessor;
    private static var DESTROYED_LAYER_PROCESSOR_set:Boolean = false;
    private static function get DESTROYED_LAYER_PROCESSOR():BasicLayerProcessor {
        if (!DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR_set) {
            DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR_set = true;
            DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR_value = BasicLayerProcessor.NULL_LAYER_PROCESSOR;
        }
        return DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR_value;
    }
    

    public function DestroyedLayerProcessor() {
        super();
    }
    

    public static function init():void {
        DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR = new DestroyedLayerProcessor();
    }
    

    public static function getInstance():BasicLayerProcessor {
        return DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR;
    }
    

    override public function process(allBinaryLayerManager:AllBinaryLayerManager):void {
        var list:BasicArrayList = this.getList();
        var size:int = list.size();
        var destroyedEventHandler:DestroyedEventHandler = DestroyedEventHandler.getInstance();
        var destroyEventCircularStaticPool:DestroyEventCircularStaticPool = DestroyEventCircularStaticPool.getInstance();
        var destroyedEvent:DestroyedEvent = null;
        var layerInterface:AllBinaryLayer = null;
        for (var index:int = 0; index < size; index++) {
            var layerInterfaceCanBeNull:Object = list.objectArray[index];
            if (layerInterfaceCanBeNull != null) {
                layerInterface = (layerInterfaceCanBeNull as AllBinaryLayer);
                allBinaryLayerManager.remove(layerInterface);
                destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface);
                destroyedEventHandler.fireEvent(destroyedEvent);
            } else {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
            }
        }
        list.clear();
    }
    }
}

