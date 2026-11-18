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
package org.allbinary.ai {
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.LayerProcessor;

    public class ArtificialIntelligenceLayerProcessor extends LayerProcessor {
    

    public function ArtificialIntelligenceLayerProcessor() {
        super(new ArtificialIntelligenceLayerManager());
    }
    

    override public function processAt(allBinaryLayerManager:AllBinaryLayerManager, layerInterface:AllBinaryLayer, index:int):void {
        var artificialIntelligenceCompositeInterface:ArtificialIntelligenceCompositeInterface = (layerInterface as ArtificialIntelligenceCompositeInterface);
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager);
    }
    

    override public function isProcessorLayer(layerInterface:AllBinaryLayer):Boolean {
        if (layerInterface.implmentsArtificialIntelligenceCompositeInterface()) {
            return true;
        } else {
            return false;
        }
    }
    }
}

