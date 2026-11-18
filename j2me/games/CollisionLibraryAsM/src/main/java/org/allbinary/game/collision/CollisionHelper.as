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

    public class CollisionHelper {
        public var sourceLayerInterface:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsCollisionHelper():void {
    
        }
    

    public function CollisionHelper(sourceLayerInterface:AllBinaryLayer) {
        super();
        this.initFieldsCollisionHelper();
        this.sourceLayerInterface = sourceLayerInterface;
    }
    

    public function isCollidable(layerInterface:CollidableCompositeLayer):Boolean {
        return true;
    }
    

    public function getOwnerLayerInterface():AllBinaryLayer {
        return this.sourceLayerInterface;
    }
    

    public function setOwnerLayerInterface(sourceLayerInterface:AllBinaryLayer):void {
        this.sourceLayerInterface = sourceLayerInterface;
    }
    }
}

