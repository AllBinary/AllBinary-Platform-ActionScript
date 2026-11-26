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
    import org.allbinary.game.collision.CollidableBaseBehavior;
    import org.allbinary.game.collision.CollidableInterfaceCompositeInterface;
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.layer.LayerManager;

    public class AllBinaryCollisionManager {
    private static var allBinaryCollisionManager_value:AllBinaryCollisionManager;
    private static var allBinaryCollisionManager_set:Boolean = false;
    private static function get allBinaryCollisionManager():AllBinaryCollisionManager {
        if (!AllBinaryCollisionManager.allBinaryCollisionManager_set) {
            AllBinaryCollisionManager.allBinaryCollisionManager_set = true;
            AllBinaryCollisionManager.allBinaryCollisionManager_value = new AllBinaryCollisionManager();
        }
        return AllBinaryCollisionManager.allBinaryCollisionManager_value;
    }
    private static function set allBinaryCollisionManager(value:AllBinaryCollisionManager):void {
        AllBinaryCollisionManager.allBinaryCollisionManager_set = true;
        AllBinaryCollisionManager.allBinaryCollisionManager_value = value;
    }
    

    public function AllBinaryCollisionManager() {
        super();
    }
    

    public static function getInstance():AllBinaryCollisionManager {
        return AllBinaryCollisionManager.allBinaryCollisionManager;
    }
    

    public function process(layerManager:LayerManager, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface, startIndex:int):void {
        var size:int = layerManager.getSize();
        for (var index:int = int(startIndex + 1); index < size; index++) {
            var collidableInterfaceCompositeInterface2:CollidableInterfaceCompositeInterface = (layerManager.getLayerAt(index) as CollidableInterfaceCompositeInterface);
            this.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
        }
    }
    

    private function collide(layerManager:LayerManager, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2:CollidableInterfaceCompositeInterface):void {
        var collidableBase2:CollidableBaseBehavior = collidableInterfaceCompositeInterface2.getCollidableInferface();
        var collidableBase:CollidableBaseBehavior = collidableInterfaceCompositeInterface.getCollidableInferface();
        if (collidableBase2.isCollidable((collidableInterfaceCompositeInterface as CollidableCompositeLayer))) {
            if (collidableBase.isCollisionInterface((collidableInterfaceCompositeInterface as CollidableCompositeLayer), collidableInterfaceCompositeInterface2)) {
                collidableBase.collideInterface((collidableInterfaceCompositeInterface as CollidableCompositeLayer), collidableInterfaceCompositeInterface2);
                collidableBase2.collideInterface((collidableInterfaceCompositeInterface as CollidableCompositeLayer), collidableInterfaceCompositeInterface);
            }
        }
    }
    }
}

