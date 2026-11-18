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
package org.allbinary.game.part.weapon {
    import org.allbinary.animation.Animation;
    import org.allbinary.game.combat.weapon.WeaponProperties;
    import org.allbinary.game.layer.weapon.WeaponLayer;
    import org.allbinary.game.layer.weapon.WeaponLayerCircularPool;
    import org.allbinary.game.score.NoScoreable;
    import org.allbinary.game.score.ScoreableInterface;
    import org.allbinary.graphics.RelativeRelationship;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class BasicProjectileWeaponPart extends BasicWeaponPart {
        private var weaponLayerCircularStaticPool:WeaponLayerCircularPool = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicProjectileWeaponPart():void {
    
        }
    

    public static function createBasicProjectileWeaponPart(animationInterface:Animation, weaponLayerCircularStaticPool:WeaponLayerCircularPool):BasicProjectileWeaponPart {
        return new BasicProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    public function BasicProjectileWeaponPart(animationInterface:Animation, sourceLayerInterface:AllBinaryLayer, weaponLayerCircularStaticPool:WeaponLayerCircularPool, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface, relativeRelationship:RelativeRelationship) {
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.initFieldsBasicProjectileWeaponPart();
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    override public function processScore(allbinaryLayerManager:AllBinaryLayerManager, angle:int, otherAngle:int, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface):void {
        var weaponLayer:WeaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), this.relativeRelationship.getZ(), angle, otherAngle, weaponProperties, scoreableInterface);
        allbinaryLayerManager.append(weaponLayer);
    }
    }
}

