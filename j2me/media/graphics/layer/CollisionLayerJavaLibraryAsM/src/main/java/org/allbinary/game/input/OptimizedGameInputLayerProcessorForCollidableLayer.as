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
package org.allbinary.game.input {
    import org.allbinary.game.layer.AllBinaryGameLayer;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.LayerProcessor;

    public class OptimizedGameInputLayerProcessorForCollidableLayer extends LayerProcessor {
    

    public function OptimizedGameInputLayerProcessorForCollidableLayer() {
        super(new OptimizedGameInputLayerManager());
    }
    

    override public function processAt(allBinaryLayerManager:AllBinaryLayerManager, layerInterface:AllBinaryLayer, index:int):void {
        var gameInputInterface:AllBinaryGameLayer = (layerInterface as AllBinaryGameLayer);
        gameInputInterface.processInput(allBinaryLayerManager);
    }
    

    override public function isProcessorLayer(layerInterface:AllBinaryLayer):Boolean {
        if (layerInterface.implmentsGameInputInterface()) {
            return true;
        } else {
            return false;
        }
    }
    }
}

