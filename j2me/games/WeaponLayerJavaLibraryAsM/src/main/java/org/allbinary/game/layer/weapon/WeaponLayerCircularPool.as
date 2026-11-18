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
    import org.allbinary.game.combat.weapon.WeaponProperties;
    import org.allbinary.game.score.ScoreableInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerCircularPool;

    public class WeaponLayerCircularPool extends AllBinaryLayerCircularPool {
    

    public function WeaponLayerCircularPool() {
        super();
    }
    

    public function getInstanceWeaponLayer(sourceLayerInterface:AllBinaryLayer, x:int, y:int, z:int, angle:int, otherAngle:int, weaponProperties:WeaponProperties, scoreable:ScoreableInterface):WeaponLayer {
        var weaponLayer:WeaponLayer = (super.getNextInstance() as WeaponLayer);
        weaponLayer.initXYZ(x, y, z);
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable);
        return weaponLayer;
    }
    }
}

