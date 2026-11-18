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
package org.allbinary.game.combat {
    import org.allbinary.game.combat.damage.DamageableBaseBehavior;
    import org.allbinary.game.combat.destroy.DestroyableBaseBehavior;

    public class CombatBaseBehavior {
    private static var NULL_COMBAT_BEHAVIOR_value:CombatBaseBehavior;
    private static var NULL_COMBAT_BEHAVIOR_set:Boolean = false;
    public static function get NULL_COMBAT_BEHAVIOR():CombatBaseBehavior {
        if (!CombatBaseBehavior.NULL_COMBAT_BEHAVIOR_set) {
            CombatBaseBehavior.NULL_COMBAT_BEHAVIOR_set = true;
            CombatBaseBehavior.NULL_COMBAT_BEHAVIOR_value = new CombatBaseBehavior(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance());
        }
        return CombatBaseBehavior.NULL_COMBAT_BEHAVIOR_value;
    }
        private var damageableBaseBehavior:DamageableBaseBehavior = null;
        private var destroyableBaseBehavior:DestroyableBaseBehavior = null;
        private var readyForExplosion:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsCombatBaseBehavior():void {
    
    
    this.readyForExplosion = false;
        }
    

    public function CombatBaseBehavior(damageableBaseBehavior:DamageableBaseBehavior, destroyableBaseBehavior:DestroyableBaseBehavior) {
        super();
        this.initFieldsCombatBaseBehavior();
        this.damageableBaseBehavior = damageableBaseBehavior;
        this.destroyableBaseBehavior = destroyableBaseBehavior;
    }
    

    public function getDamageableBaseBehavior():DamageableBaseBehavior {
        return this.damageableBaseBehavior;
    }
    

    public function getDestroyableBaseBehavior():DestroyableBaseBehavior {
        return this.destroyableBaseBehavior;
    }
    

    public function isReadyForExplosion():Boolean {
        return this.readyForExplosion;
    }
    

    public function setReadyForExplosion(readyForExplosion:Boolean):void {
        this.readyForExplosion = readyForExplosion;
    }
    }
}

