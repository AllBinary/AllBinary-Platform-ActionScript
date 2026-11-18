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
package org.allbinary.game.combat.damage {

    public class DamageableBaseBehavior implements DamageableInterface {
    private static var instance_value:DamageableBaseBehavior;
    private static var instance_set:Boolean = false;
    private static function get instance():DamageableBaseBehavior {
        if (!DamageableBaseBehavior.instance_set) {
            DamageableBaseBehavior.instance_set = true;
            DamageableBaseBehavior.instance_value = new DamageableBaseBehavior();
        }
        return DamageableBaseBehavior.instance_value;
    }
    

    public static function getInstance():DamageableBaseBehavior {
        return DamageableBaseBehavior.instance;
    }
    

    public function getName():String {
        return JSystem.className(this);
    }
    

    public function damage(damage:int, damageType:int):void {
    }
    

    public function getDamage(damageType:int):int {
        return 6000;
    }
    }
}

