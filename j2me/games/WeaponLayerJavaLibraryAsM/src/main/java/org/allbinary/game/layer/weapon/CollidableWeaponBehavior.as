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
package org.allbinary.game.layer.weapon {
    import org.allbinary.game.collision.CollidableHelperFactory;
    import org.allbinary.game.collision.CollidableInterfaceCompositeInterface;
    import org.allbinary.game.collision.CollisionHelper;
    import org.allbinary.game.collision.CollisionType;
    import org.allbinary.game.collision.CollisionTypeFactory;
    import org.allbinary.game.combat.damage.DamageableInterface;
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.NullUtil;

    public class CollidableWeaponBehavior extends CollidableDestroyableDamageableBehavior {
    private static var NULL_COLLIDABLE_WEAPON_BEHAVIOR_value:Object;
    private static var NULL_COLLIDABLE_WEAPON_BEHAVIOR_set:Boolean = false;
    private static function get NULL_COLLIDABLE_WEAPON_BEHAVIOR():Object {
        if (!CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR_set) {
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR_set = true;
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR_value;
    }
        private var collided:Boolean = false;
        public var collisionHelper:CollisionHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsCollidableWeaponBehavior():void {
    this.collided = false;
    
        }
    

    public static function getNullInstance():CollidableWeaponBehavior {
        if (CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT) {
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR = new CollidableWeaponBehavior(false);
        }
        return (CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR as CollidableWeaponBehavior);
    }
    

    public function CollidableWeaponBehavior(collidable:Boolean) {
        super(collidable);
        this.initFieldsCollidableWeaponBehavior();
        this.setCollided(false);
        this.setCollidable(true);
        this.collisionHelper = CollidableHelperFactory.getInstance();
    }
    

    public function init(sourceLayerInterface:AllBinaryLayer):void {
        this.setCollided(false);
        this.collisionHelper.setOwnerLayerInterface(sourceLayerInterface);
    }
    

    override public function isCollision(ownerLayer:CollidableCompositeLayer, collisionLayer:CollidableCompositeLayer):Boolean {
        if (this.collisionHelper.isCollidable(collisionLayer)) {
            if (ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]) {
                return super.isCollision(ownerLayer, collisionLayer);
            }
        }
        return false;
    }
    

    override public function collide(ownerLayer:CollidableCompositeLayer, collisionLayer:CollidableCompositeLayer):void {
        super.collide(ownerLayer, collisionLayer);
        this.collided = true;
    }
    

    override public function isCollisionInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):Boolean {
        if (this.collisionHelper.isCollidable((collidableInterfaceCompositeInterface as CollidableCompositeLayer))) {
            var layerInterface:AllBinaryLayer = (collidableInterfaceCompositeInterface as AllBinaryLayer);
            if (ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0]) {
                if (this.layerCollisionUtil.isCollision(ownerLayer, layerInterface)) {
                    return true;
                }
            }
        }
        return false;
    }
    

    override public function collideInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):void {
        var ownerDamageableInterface:DamageableInterface = (ownerLayer as DamageableInterface);
        var damageableInterface:DamageableInterface = (collidableInterfaceCompositeInterface as DamageableInterface);
        this.damageUtil.process(ownerDamageableInterface, damageableInterface);
        this.collided = true;
    }
    

    override public function getCollisionTypeWith(layerInterface:AllBinaryLayer):CollisionType {
        return CollisionTypeFactory.getInstance().COLLISION;
    }
    

    public function isCollided():Boolean {
        return this.collided;
    }
    

    private function setCollided(collided:Boolean):void {
        this.collided = collided;
    }
    }
}

