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
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;

    public class DamageUtil {
    private static var instance_value:DamageUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():DamageUtil {
        if (!DamageUtil.instance_set) {
            DamageUtil.instance_set = true;
            DamageUtil.instance_value = new DamageUtil();
        }
        return DamageUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var COLLIDE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsDamageUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.COLLIDE = "collide";
        }
    

    public static function getInstance():DamageUtil {
        return DamageUtil.instance;
    }
    

    public function DamageUtil() {
        super();
        this.initFieldsDamageUtil();
    }
    

    public function process(damageableInterface:DamageableInterface, damageableInterface2:DamageableInterface):void {
        damageableInterface.damage(damageableInterface2.getDamage(0), 0);
    }
    

    public function debugDamage(collidableInterfaceCompositeInterface1:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableCompositeLayer):void {
        var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (collidableInterfaceCompositeInterface as CollidableDestroyableDamageableLayer);
        var damage:int = collidableDestroyableDamageableLayer.getDamage(0);
        if (damage > 20000) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append("Collision ");
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString());
            stringBuffer.append(" with: ");
            stringBuffer.append(collidableInterfaceCompositeInterface.toString());
            stringBuffer.append(" damage: ");
            stringBuffer.appendint(damage);
            this.logUtil.putF(stringBuffer.toString(), collidableInterfaceCompositeInterface1, this.COLLIDE);
        }
    }
    }
}

