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
    import org.allbinary.util.CircularIndexUtil;

    public class WeaponLayerArrayLayerCircularStaticPool {
    private static var instance_value:WeaponLayerArrayLayerCircularStaticPool;
    private static var instance_set:Boolean = false;
    private static function get instance():WeaponLayerArrayLayerCircularStaticPool {
        if (!WeaponLayerArrayLayerCircularStaticPool.instance_set) {
            WeaponLayerArrayLayerCircularStaticPool.instance_set = true;
            WeaponLayerArrayLayerCircularStaticPool.instance_value = new WeaponLayerArrayLayerCircularStaticPool();
        }
        return WeaponLayerArrayLayerCircularStaticPool.instance_value;
    }
        private var MAX:int = 0;
        private var circularIndexUtil:CircularIndexUtil = null;
        private var WEAPONLAYER_ARRAY:Vector.<Vector.<WeaponLayer>> = null;
        private var TWO_WEAPONLAYER_ARRAY:Vector.<Vector.<WeaponLayer>> = null;
        private var THREE_WEAPONLAYER_ARRAY:Vector.<Vector.<WeaponLayer>> = null;

        // Java field initializers run after the base constructor
        private function initFieldsWeaponLayerArrayLayerCircularStaticPool():void {
    this.MAX = 5;
    this.circularIndexUtil = CircularIndexUtil.createInstance(this.MAX);
    this.WEAPONLAYER_ARRAY = new Vector.<Vector.<WeaponLayer>>(int(this.MAX * 2));
    this.TWO_WEAPONLAYER_ARRAY = new Vector.<Vector.<WeaponLayer>>(this.MAX);
    this.THREE_WEAPONLAYER_ARRAY = new Vector.<Vector.<WeaponLayer>>(this.MAX);
        }

        public function WeaponLayerArrayLayerCircularStaticPool() {
            super();
            this.initFieldsWeaponLayerArrayLayerCircularStaticPool();
        }
    

    public static function getInstance():WeaponLayerArrayLayerCircularStaticPool {
        return WeaponLayerArrayLayerCircularStaticPool.instance;
    }
    

    public function init():void {
        for (var index:int = 0; index < this.MAX; index++) {
            this.WEAPONLAYER_ARRAY[index] = new Vector.<WeaponLayer>(1);
            this.TWO_WEAPONLAYER_ARRAY[index] = new Vector.<WeaponLayer>(2);
            this.THREE_WEAPONLAYER_ARRAY[index] = new Vector.<WeaponLayer>(3);
        }
        this.WEAPONLAYER_ARRAY = this.WEAPONLAYER_ARRAY;
        this.TWO_WEAPONLAYER_ARRAY = this.TWO_WEAPONLAYER_ARRAY;
        this.THREE_WEAPONLAYER_ARRAY = this.THREE_WEAPONLAYER_ARRAY;
    }
    

    private function getWeaponLayerArrays(size:int):Vector.<Vector.<WeaponLayer>> {
        if (size == 1) {
            return this.WEAPONLAYER_ARRAY;
        } else if (size == 2) {
            return this.TWO_WEAPONLAYER_ARRAY;
        } else if (size == 3) {
            return this.THREE_WEAPONLAYER_ARRAY;
        }
        throw new JException("RuntimeException", "");
    }
    

    public function getInstanceArray(size:int):Vector.<WeaponLayer> {
        var weaponLayerArray:Vector.<WeaponLayer> = this.getWeaponLayerArrays(size)[this.circularIndexUtil.getIndex()];
        this.circularIndexUtil.next();
        return weaponLayerArray;
    }
    }
}

