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
    import org.allbinary.game.score.ScoreableInterface;
    import org.allbinary.graphics.RelativeRelationship;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.math.AngleFactory;

    public class ArcedMultiBeamWeaponPart extends BasicWeaponPart {
        private var weaponLayerCircularStaticPool:WeaponLayerCircularPool = null;
        private var total:int = 0;
        private var TOTAL_ANGLE:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsArcedMultiBeamWeaponPart():void {
    
    
    this.TOTAL_ANGLE = AngleFactory.getInstance().TOTAL_ANGLE;
        }
    

    public function ArcedMultiBeamWeaponPart(animationInterface:Animation, sourceLayerInterface:AllBinaryLayer, weaponLayerCircularStaticPool:WeaponLayerCircularPool, total:int, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface, relativeRelationship:RelativeRelationship) {
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.initFieldsArcedMultiBeamWeaponPart();
        this.total = total;
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    override public function processScore(allbinaryLayerManager:AllBinaryLayerManager, angle:int, otherAngle:int, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface):void {
        var increment:int = ((int((int((int(this.total - 1)) / this.TOTAL_ANGLE))) << 16) >> 16);
        var minAngle:int = ((int((int(angle - ((int(increment * this.total)) >> 1)))) << 16) >> 16);
        var next:int = 0;
        var weaponLayer:WeaponLayer = null;
        for (var index:int = 0; index < this.total; index++) {
            weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), 0, (int(minAngle + increment)), otherAngle, weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += increment;
        }
    }
    }
}

