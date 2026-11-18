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

    public class CollidableNeverCollideBehavior extends CollidableBaseBehavior {
    

    public function CollidableNeverCollideBehavior(isCollidable:Boolean) {
        super(isCollidable);
    }
    

    override public function isCollision(ownerLayer:CollidableCompositeLayer, allbinaryCollidableLayer:CollidableCompositeLayer):Boolean {
        return false;
    }
    

    override public function collide(ownerLayer:CollidableCompositeLayer, allbinaryCollidableLayer:CollidableCompositeLayer):void {
    }
    

    override public function collideInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):void {
    }
    

    override public function isCollisionInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):Boolean {
        return false;
    }
    }
}

