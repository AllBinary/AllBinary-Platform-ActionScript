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
package org.allbinary.game.health {
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;

    public class Health implements HealthInterface {
    private static var NULL_HEALTH_value:Health;
    private static var NULL_HEALTH_set:Boolean = false;
    public static function get NULL_HEALTH():Health {
        if (!Health.NULL_HEALTH_set) {
            Health.NULL_HEALTH_set = true;
            Health.NULL_HEALTH_value = new Health(0);
        }
        return Health.NULL_HEALTH_value;
    }
    public static const NAME:String = "Health Resource";
    private static const HEALTH_LABEL:String = "Health: ";
    private static const MAX_HEALTH_LABEL:String = " Max: ";
        private var health:int = 0;
        private var maxHealth:int = 0;
        private var healthListenerInterface:HealthListenerInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsHealth():void {
    this.health = 0;
    this.maxHealth = 0;
    this.healthListenerInterface = NullHealthListener.NULL_HEALTH_LISTENER;
        }
    

    public function Health(maxHealth:int) {
        super();
        this.initFieldsHealth();
        this.setMaxHealth(maxHealth);
        this.setHealth(maxHealth);
    }
    

    public function heal(ahealth:int):void {
        var newHealth:int = int(this.getHealth() + ahealth);
        if (newHealth > this.getMaxHealth()) {
            this.setHealth(this.getMaxHealth());
        } else {
            this.setHealth(newHealth);
        }
    }
    

    public function healMax():void {
        this.setHealth(this.getMaxHealth());
    }
    

    public function isDamaged():Boolean {
        if (this.getHealth() != this.getMaxHealth()) {
            return true;
        } else {
            return false;
        }
    }
    

    public function damage(ahealth:int):void {
        if (ahealth < 0) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append("******* Trying to heal when damaging. Damage: ");
            stringBuffer.appendint(ahealth);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(this.toString());
            ForcedLogUtil.log(stringBuffer.toString(), this);
            return;
        }
        var health:int = int(this.getHealth() - ahealth);
        this.setHealth(health);
    }
    

    public function isAlive():Boolean {
        if (this.getHealth() <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    public function getMaxHealth():int {
        return this.maxHealth;
    }
    

    public function setMaxHealth(maxHealth:int):void {
        this.maxHealth = maxHealth;
    }
    

    public function setHealth(health:int):void {
        if (health > this.getMaxHealth()) {
            this.health = this.getMaxHealth();
        } else if (health < 0) {
            this.health = 0;
        } else {
            this.health = health;
        }
        if (this.healthListenerInterface != null) {
            this.healthListenerInterface.onHealthChange();
        }
    }
    

    public function getHealth():int {
        return this.health;
    }
    

    public function addListener(healthGraphic:HealthListenerInterface):void {
        this.healthListenerInterface = healthGraphic;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(Health.HEALTH_LABEL);
        stringBuffer.appendint(this.health);
        stringBuffer.append(Health.MAX_HEALTH_LABEL);
        stringBuffer.appendint(this.maxHealth);
        return stringBuffer.toString();
    }
    }
}

