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
    import org.allbinary.game.collision.CollidableBaseBehavior;
    import org.allbinary.game.collision.CollidableInterfaceCompositeInterface;
    import org.allbinary.game.combat.damage.DamageUtil;
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.logic.communication.log.ForcedLogUtil;

    public class CollidableDestroyableDamageableBehavior extends CollidableBaseBehavior {
        public var damageUtil:DamageUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsCollidableDestroyableDamageableBehavior():void {
    this.damageUtil = DamageUtil.getInstance();
        }
    

    public function CollidableDestroyableDamageableBehavior(collidable:Boolean) {
        super(collidable);
        this.initFieldsCollidableDestroyableDamageableBehavior();
    }
    

    override public function isCollision(ownerLayer:CollidableCompositeLayer, collisionLayer:CollidableCompositeLayer):Boolean {
        if (ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]) {
            return super.isCollision(ownerLayer, collisionLayer);
        }
        return false;
    }
    

    override public function collide(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableCompositeLayer):void {
        var ownerCollidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (ownerLayer as CollidableDestroyableDamageableLayer);
        var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (collidableInterfaceCompositeInterface as CollidableDestroyableDamageableLayer);
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0);
    }
    

    override public function isCollisionInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):Boolean {
        ForcedLogUtil.log("No Longer Used", this);
        return false;
    }
    

    override public function collideInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):void {
        ForcedLogUtil.log("No Longer Used", this);
    }
    }
}

