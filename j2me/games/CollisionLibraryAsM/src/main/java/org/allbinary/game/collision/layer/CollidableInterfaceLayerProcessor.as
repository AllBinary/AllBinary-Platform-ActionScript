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
package org.allbinary.game.collision.layer {
    import org.allbinary.game.collision.CollidableInterfaceCompositeInterface;
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.LayerProcessor;

    public class CollidableInterfaceLayerProcessor extends LayerProcessor {
    

    public function CollidableInterfaceLayerProcessor() {
        super(new CollidableInterfaceLayerManager());
    }
    

    override public function processAt(allBinaryLayerManager:AllBinaryLayerManager, layerInterface:AllBinaryLayer, index:int):void {
        var collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface = (layerInterface as CollidableInterfaceCompositeInterface);
        if (collidableInterfaceCompositeInterface.getCollidableInferface().isCollidable((collidableInterfaceCompositeInterface as CollidableCompositeLayer))) {
            AllBinaryCollisionManager.getInstance().process(this.getLayerManager(), collidableInterfaceCompositeInterface, index);
        }
    }
    

    override public function isProcessorLayer(layerInterface:AllBinaryLayer):Boolean {
        if (layerInterface.implmentsCollidableInterface()) {
            return true;
        } else {
            return false;
        }
    }
    }
}

