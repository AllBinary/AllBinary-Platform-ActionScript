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
package org.allbinary.game.layer.special {
    import org.allbinary.game.collision.CollidableInterfaceCompositeInterface;
    import org.allbinary.game.collision.CollisionType;
    import org.allbinary.game.collision.CollisionTypeFactory;
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.game.layer.pickup.PickedUpLayerInterface;
    import org.allbinary.logic.communication.log.ForcedLogUtil;

    public class CollidableCharacterNoDamageBehavior extends CollidableDestroyableDamageableBehavior {
    

    public function CollidableCharacterNoDamageBehavior(collidable:Boolean) {
        super(collidable);
    }
    

    override public function collide(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableCompositeLayer):void {
        var collisionTypeFactory:CollisionTypeFactory = CollisionTypeFactory.getInstance();
        var collisionType:CollisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType == collisionTypeFactory.PICKUP) {
            var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (ownerLayer as CollidableDestroyableDamageableLayer);
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer((collidableInterfaceCompositeInterface as PickedUpLayerInterface));
        } else {
        }
    }
    

    override public function collideInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):void {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    }
}

