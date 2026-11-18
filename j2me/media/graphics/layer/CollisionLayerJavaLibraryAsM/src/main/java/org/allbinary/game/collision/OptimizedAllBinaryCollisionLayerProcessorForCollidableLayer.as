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
package org.allbinary.game.collision {
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.LayerManager;
    import org.allbinary.layer.LayerProcessor;

    public class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer extends LayerProcessor {
    

    public function OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer() {
        super(new OptimizedAllBinaryCollisionLayerManager());
    }
    

    override public function processAt(allBinaryLayerManager:AllBinaryLayerManager, layerInterface:AllBinaryLayer, startIndex:int):void {
        var collidableInterfaceCompositeInterface:CollidableCompositeLayer = (layerInterface as CollidableCompositeLayer);
        var collidableBase:CollidableBaseBehavior = collidableInterfaceCompositeInterface.getCollidableInferface();
        if (collidableBase.isCollidable(collidableInterfaceCompositeInterface)) {
            var layerManager:LayerManager = this.getLayerManager();
            var size:int = layerManager.getSize();
            var collidableInterfaceCompositeInterface2:CollidableCompositeLayer = null;
            var collidableBase2:CollidableBaseBehavior = null;
            for (var index:int = int(startIndex + 1); index < size; index++) {
                collidableInterfaceCompositeInterface2 = (layerManager.getLayerAt(index) as CollidableCompositeLayer);
                collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface();
                if (collidableBase2.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)) {
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface);
                }
            }
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

