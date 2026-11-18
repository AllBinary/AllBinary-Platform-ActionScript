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
package org.allbinary.game.combat.weapon {
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.BasicDecimal;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;

    public class WeaponProperties extends SimpleWeaponProperties {
    private static var NULL_WEAPON_PROPERTIES_value:WeaponProperties;
    private static var NULL_WEAPON_PROPERTIES_set:Boolean = false;
    public static function get NULL_WEAPON_PROPERTIES():WeaponProperties {
        if (!WeaponProperties.NULL_WEAPON_PROPERTIES_set) {
            WeaponProperties.NULL_WEAPON_PROPERTIES_set = true;
            WeaponProperties.NULL_WEAPON_PROPERTIES_value = new WeaponProperties(0, 0, 0, 0, ((int(0) << 16) >> 16));
        }
        return WeaponProperties.NULL_WEAPON_PROPERTIES_value;
    }
    private static var messageSent:Boolean = false;
    private static const DAMAGE:String = "Damage: ";
    private static const RANGE:String = "Range: ";
    private static const RELOAD:String = "Reload: ";
        private var reloadTime:Number = 0;
        private var targetingTime:Number = 0;
        private var speed:BasicDecimal = null;
        private var MAX:Number = 0;
        private var ZERO:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsWeaponProperties():void {
    this.reloadTime = 0;
    this.targetingTime = 0;
    this.speed = BasicDecimal.ZERO_BIGDECIMAL;
    this.MAX = 10240;
    this.ZERO = 0;
        }
    

    public function WeaponProperties(reloadTime:Number, targetingTime:Number, speed:Number, damage:int, dissipation:int) {
        super();
        this.initFieldsWeaponProperties();
        if (speed < this.MAX && speed != 0 && !WeaponProperties.messageSent) {
            var MESSAGE:String = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ";
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.put(new StringMaker().append(MESSAGE).appendlong(speed).toString(), this, commonStrings.CONSTRUCTOR);
            WeaponProperties.messageSent = true;
        }
        this.setReloadTime(reloadTime);
        this.setTargetingTime(targetingTime);
        this.setDamage(damage);
        this.setDissipation(dissipation);
        this.setSpeed(new BasicDecimal(speed));
        if (dissipation != this.ZERO) {
            var unscaledDamage:Number = this.speed.getUnscaled() * Number(damage);
            var scaledDissipation:int = int(dissipation * this.speed.getScaledFactorValue());
            var value:Number = (unscaledDamage / Number(scaledDissipation));
            this.setRange(int(int((value * 9)) / 10));
        }
    }
    

    private function setReloadTime(reloadTime:Number):void {
        this.reloadTime = reloadTime;
    }
    

    public function getReloadTime():Number {
        return this.reloadTime;
    }
    

    private function setTargetingTime(targetingTime:Number):void {
        this.targetingTime = targetingTime;
    }
    

    public function getTargetingTime():Number {
        return this.targetingTime;
    }
    

    public function getSpeed():BasicDecimal {
        return this.speed;
    }
    

    public function setSpeed(speed:BasicDecimal):void {
        this.speed = speed;
    }
    

    public function getDamageI(range:int):int {
        return this.getDamage() - ((this.getDissipation() * range) / this.speed.getScaled());
    }
    

    public function toStringArray():Vector.<String> {
        var index:int = 0;
        var stringArray:Vector.<String> = new Vector.<String>(3);
        var stringBuffer:StringMaker = new StringMaker();
        stringArray[index++] = stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage()).toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange()).toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime()).toString();
        return stringArray;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime());
        return stringBuffer.toString();
    }
    }
}

