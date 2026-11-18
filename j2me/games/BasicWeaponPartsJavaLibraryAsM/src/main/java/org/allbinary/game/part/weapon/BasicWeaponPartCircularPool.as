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
    import org.allbinary.game.combat.weapon.WeaponProperties;
    import org.allbinary.game.score.ScoreableInterface;
    import org.allbinary.graphics.RelativeRelationship;
    import org.allbinary.layer.AllBinaryLayer;

    public class BasicWeaponPartCircularPool {
    private static var NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_value:BasicWeaponPartCircularPool;
    private static var NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_set:Boolean = false;
    public static function get NULL_BASIC_WEAPON_PART_CIRCULAR_POOL():BasicWeaponPartCircularPool {
        if (!BasicWeaponPartCircularPool.NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_set) {
            BasicWeaponPartCircularPool.NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_set = true;
            BasicWeaponPartCircularPool.NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_value = new BasicWeaponPartCircularPool();
        }
        return BasicWeaponPartCircularPool.NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_value;
    }
        private var basicWeaponPart:BasicWeaponPart = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicWeaponPartCircularPool():void {
    this.basicWeaponPart = BasicWeaponPart.NULL_BASIC_WEAPON_PART;
        }

        public function BasicWeaponPartCircularPool() {
            super();
            this.initFieldsBasicWeaponPartCircularPool();
        }
    

    public function init(basicWeaponPartFactoryInterface:BasicWeaponPartFactoryInterface):void {
        this.basicWeaponPart = basicWeaponPartFactoryInterface.getInstance();
    }
    

    public function getInstance4(sourceLayerInterface:AllBinaryLayer, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface, relativeRelationship:RelativeRelationship):BasicWeaponPart {
        this.basicWeaponPart.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return this.basicWeaponPart;
    }
    }
}

