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
    import org.allbinary.math.NoDecimalTrigTable;

    public class StraightMultiProjectileWeaponPart extends BasicWeaponPart {
        private var weaponLayerCircularStaticPool:WeaponLayerCircularPool = null;
        private var total:int = 0;
        private var noDecimalTrigTable:NoDecimalTrigTable = null;

        // Java field initializers run after the base constructor
        private function initFieldsStraightMultiProjectileWeaponPart():void {
    
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
        }
    

    public static function createStraightMultiProjectileWeaponPart(animationInterface:Animation, weaponLayerCircularStaticPool:WeaponLayerCircularPool):StraightMultiProjectileWeaponPart {
        return new StraightMultiProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    public function StraightMultiProjectileWeaponPart(animationInterface:Animation, sourceLayerInterface:AllBinaryLayer, weaponLayerCircularStaticPool:WeaponLayerCircularPool, total:int, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface, relativeRelationship:RelativeRelationship) {
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.initFieldsStraightMultiProjectileWeaponPart();
        this.total = total;
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    override public function processScore(allbinaryLayerManager:AllBinaryLayerManager, angle:int, otherAngle:int, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface):void {
        var sourceLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var reducedWidth:int = (int(int(sourceLayerInterface.getWidth() * 8) / 10));
        var halfWidth:int = (reducedWidth >> 1);
        var x:int = this.relativeRelationship.getX();
        var y:int = this.relativeRelationship.getY();
        var sine:Number = 0;
        var beamX:int = 0;
        var cosine:Number = 0;
        var beamY:int = 0;
        var weaponLayer:WeaponLayer = null;
        var increment:int = int(reducedWidth / (int(this.total - 1)));
        var next:int = -halfWidth;
        for (var index:int = 0; index < this.total; index++) {
            sine = (Number(next) * this.noDecimalTrigTable.sin(angle));
            beamX = int((sine / Number(this.noDecimalTrigTable.SCALE)));
            cosine = (Number(next) * this.noDecimalTrigTable.cos(angle));
            beamY = -int((cosine / Number(this.noDecimalTrigTable.SCALE)));
            weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, int(x + beamX), int(y + beamY), 0, angle, otherAngle, weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += increment;
        }
    }
    }
}

