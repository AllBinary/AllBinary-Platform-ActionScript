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
package org.allbinary.game.ag.layer.weapon.mine {
    import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.game.combat.weapon.WeaponProperties;
    import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory;
    import org.allbinary.game.layer.pickup.IconLayerFactory;
    import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface;
    import org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory;
    import org.allbinary.game.layer.weapon.WeaponLayerCircularPool;
    import org.allbinary.game.score.ScoreableInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class MineCountedPickedUpLayerInterfaceFactory extends CountedPickedUpLayerInterfaceFactory {
    private static var pickedUpLayerInterfaceFactoryInterface_value:PickedUpLayerInterfaceFactoryInterface;
    private static var pickedUpLayerInterfaceFactoryInterface_set:Boolean = false;
    private static function get pickedUpLayerInterfaceFactoryInterface():PickedUpLayerInterfaceFactoryInterface {
        if (!MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface_set) {
            MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface_set = true;
            MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface_value = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
        }
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface_value;
    }
        private var weaponLayerCircularStaticPool:WeaponLayerCircularPool = null;
        private var weaponProperties:WeaponProperties = null;
        private var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsMineCountedPickedUpLayerInterfaceFactory():void {
    this.weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance();
    this.weaponProperties = new WeaponProperties(-1, -1, 0, 8000, ((int(10) << 16) >> 16));
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        }
    

    public static function init():void {
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = new MineCountedPickedUpLayerInterfaceFactory();
    }
    

    public function MineCountedPickedUpLayerInterfaceFactory() {
        super(PickedUpLayerTypeFactory.getInstance().MINE, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get_(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get_(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance1(0));
        this.initFieldsMineCountedPickedUpLayerInterfaceFactory();
    }
    

    public static function getInstance():PickedUpLayerInterfaceFactoryInterface {
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    

    override public function getTotal():int {
        return 3;
    }
    

    override public function getNextInstance(hashtable:ABHashtable, x:int, y:int, z:int):AllBinaryLayer {
        var sourceLayerInterface:AllBinaryLayer = (hashtable.get_((this.smallIntegerSingletonFactory.getAt(0) as Object)) as AllBinaryLayer);
        var angle:* = (hashtable.get_((this.smallIntegerSingletonFactory.getAt(1) as Object)) as *);
        var scoreableInterface:ScoreableInterface = (sourceLayerInterface as ScoreableInterface);
        return this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, angle.intValue(), 0, this.weaponProperties, scoreableInterface);
    }
    }
}

