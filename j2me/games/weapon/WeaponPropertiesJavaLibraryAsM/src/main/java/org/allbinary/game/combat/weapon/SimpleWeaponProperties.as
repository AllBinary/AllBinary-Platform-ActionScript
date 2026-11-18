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

    public class SimpleWeaponProperties {
        private var damage:int = 0;
        private var dissipation:int = 0;
        private var range:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsSimpleWeaponProperties():void {
    this.damage = 0;
    this.dissipation = 0;
    this.range = 0;
        }

        public function SimpleWeaponProperties() {
            super();
            this.initFieldsSimpleWeaponProperties();
        }
    

    public function set_(simpleWeaponProperties:SimpleWeaponProperties):void {
        this.setDamage(simpleWeaponProperties.getDamage());
        this.setDissipation(simpleWeaponProperties.getDissipation());
        this.setRange(simpleWeaponProperties.getRange());
    }
    

    public function setDamage(damage:int):void {
        this.damage = damage;
    }
    

    public function getDamage():int {
        return this.damage;
    }
    

    public function setDissipation(dissipation:int):void {
        this.dissipation = dissipation;
    }
    

    public function getDissipation():int {
        return this.dissipation;
    }
    

    public function getRange():int {
        return this.range;
    }
    

    public function setRange(range:int):void {
        this.range = range;
    }
    }
}

