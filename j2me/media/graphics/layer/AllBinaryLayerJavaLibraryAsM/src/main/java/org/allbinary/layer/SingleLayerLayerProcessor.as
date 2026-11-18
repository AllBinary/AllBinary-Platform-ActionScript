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

    public class SingleLayerLayerProcessor extends LayerProcessor {
    

    public function SingleLayerLayerProcessor() {
        super(new SingleLayerLayerManager());
    }
    

    override public function process(allBinaryLayerManager:AllBinaryLayerManager):void {
        var layerManager:LayerManager = this.getLayerManager();
        this.processAt(allBinaryLayerManager, (layerManager.getLayerAt(0) as AllBinaryLayer), 0);
    }
    }
}

