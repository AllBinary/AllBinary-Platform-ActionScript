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
package org.allbinary.game.layer.drop {
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.BasicLayerProcessor;
    import org.allbinary.util.BasicArrayList;

    public class DropLayerProcessor extends BasicLayerProcessor {
    private static var LAYER_PROCESSOR_value:BasicLayerProcessor;
    private static var LAYER_PROCESSOR_set:Boolean = false;
    private static function get LAYER_PROCESSOR():BasicLayerProcessor {
        if (!DropLayerProcessor.LAYER_PROCESSOR_set) {
            DropLayerProcessor.LAYER_PROCESSOR_set = true;
            DropLayerProcessor.LAYER_PROCESSOR_value = new DropLayerProcessor();
        }
        return DropLayerProcessor.LAYER_PROCESSOR_value;
    }
    

    public function DropLayerProcessor() {
        super();
    }
    

    public static function getInstance():BasicLayerProcessor {
        return DropLayerProcessor.LAYER_PROCESSOR;
    }
    

    override public function process(allBinaryLayerManager:AllBinaryLayerManager):void {
        var list:BasicArrayList = this.getList();
        var size:int = list.size();
        var layerInterface:AllBinaryLayer = null;
        var dropLayerInterface:DropLayerInterface = null;
        for (var index:int = 0; index < size; index++) {
            layerInterface = (list.objectArray[index] as AllBinaryLayer);
            dropLayerInterface = (layerInterface as DropLayerInterface);
            layerInterface = (dropLayerInterface.getDroppedLayer() as AllBinaryLayer);
            allBinaryLayerManager.append(layerInterface);
        }
        list.clear();
    }
    }
}

