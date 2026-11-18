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
package org.allbinary.layer {
    import org.allbinary.string.CommonStrings;

    public class LayerProcessor implements LayerProcessorInterface {
        public var commonStrings:CommonStrings = null;
        private var layerManager:LayerManager = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerProcessor():void {
    this.commonStrings = CommonStrings.getInstance();
    
        }
    

    public function LayerProcessor(layerManager:LayerManager) {
        super();
        this.initFieldsLayerProcessor();
        this.layerManager = layerManager;
    }
    

    public function processAt(allBinaryLayerManager:AllBinaryLayerManager, layerInterface:AllBinaryLayer, index:int):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function isProcessorLayer(layerInterface:AllBinaryLayer):Boolean {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function getLayerManager():LayerManager {
        return this.layerManager;
    }
    

    public function process(allBinaryLayerManager:AllBinaryLayerManager):void {
        var layerManager:LayerManager = this.getLayerManager();
        var size:int = layerManager.getSize();
        for (var index:int = 0; index < size; index++) {
            this.processAt(allBinaryLayerManager, (layerManager.getLayerAt(index) as AllBinaryLayer), index);
        }
    }
    }
}

