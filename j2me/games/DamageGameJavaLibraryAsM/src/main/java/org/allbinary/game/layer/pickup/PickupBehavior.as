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
package org.allbinary.game.layer.pickup {
    import org.allbinary.game.health.HealthInterfaceCompositeInterface;
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer;
    import org.allbinary.game.part.CountedLayerInterfaceFactoryPart;
    import org.allbinary.game.part.PartInterface;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;

    public class PickupBehavior implements PickupBehaviorInterface {
    private static var NULL_PICKUP_BEHAVIOR_value:Object;
    private static var NULL_PICKUP_BEHAVIOR_set:Boolean = false;
    public static function get NULL_PICKUP_BEHAVIOR():Object {
        if (!PickupBehavior.NULL_PICKUP_BEHAVIOR_set) {
            PickupBehavior.NULL_PICKUP_BEHAVIOR_set = true;
            PickupBehavior.NULL_PICKUP_BEHAVIOR_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return PickupBehavior.NULL_PICKUP_BEHAVIOR_value;
    }
    public static function set NULL_PICKUP_BEHAVIOR(value:Object):void {
        PickupBehavior.NULL_PICKUP_BEHAVIOR_set = true;
        PickupBehavior.NULL_PICKUP_BEHAVIOR_value = value;
    }
        public var logUtil:LogUtil = null;
        private var countedIndex:int = 0;
        private var ownerLayerInterface:CollidableCompositeLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsPickupBehavior():void {
    this.logUtil = LogUtil.getInstance();
    
    
        }
    

    public static function getNullInstance():PickupBehavior {
        if (PickupBehavior.NULL_PICKUP_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT) {
            PickupBehavior.NULL_PICKUP_BEHAVIOR = new PickupBehavior(CollidableCompositeLayer.getNullInstance(), 0);
        }
        return (PickupBehavior.NULL_PICKUP_BEHAVIOR as PickupBehavior);
    }
    

    public function PickupBehavior(ownerLayerInterface:CollidableCompositeLayer, countedIndex:int) {
        super();
        this.initFieldsPickupBehavior();
        this.ownerLayerInterface = ownerLayerInterface;
        this.countedIndex = countedIndex;
    }
    

    public function doPickup(pickupProcessorInterface:PickupProcessorInterface):void {
        try {
            var healthInterfaceCompositeInterface:HealthInterfaceCompositeInterface = (this.ownerLayerInterface as HealthInterfaceCompositeInterface);
            if (healthInterfaceCompositeInterface.getHealthInterface().isAlive()) {
                pickupProcessorInterface.process(this.ownerLayerInterface);
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "doPickup", e);
        }
    }
    

    public function doPickupLayer(pickupLayerInterface:PickedUpLayerInterface):void {
        try {
            var pickedUpLayerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface();
            var pickedUpLayerType:PickedUpLayerType = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType();
            var pickedUpLayerTypeFactory:PickedUpLayerTypeFactory = PickedUpLayerTypeFactory.getInstance();
            if (pickedUpLayerType == pickedUpLayerTypeFactory.BEAM || pickedUpLayerType == pickedUpLayerTypeFactory.MINE || pickedUpLayerType == pickedUpLayerTypeFactory.PROJECTILE || pickedUpLayerType == pickedUpLayerTypeFactory.ENHANCEMENT) {
                this.add((pickedUpLayerInterfaceFactoryInterface as CountedPickedUpLayerInterfaceFactoryInterface));
            } else if (pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() == pickedUpLayerTypeFactory.PART) {
                var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface);
            } else if (pickedUpLayerType == pickedUpLayerTypeFactory.NONE) {
            } else {
                var pickupProcessorInterface:PickupProcessorInterface = (pickedUpLayerInterfaceFactoryInterface as PickupProcessorInterface);
                this.doPickup(pickupProcessorInterface);
            }
            pickupLayerInterface.setPickedUp();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "doPickup", e);
        }
    }
    

    public function add(countedPickedUpLayerInterfaceFactoryInterface:CountedPickedUpLayerInterfaceFactoryInterface):void {
        var partIndex:int = int(countedPickedUpLayerInterfaceFactoryInterface.getId() + this.countedIndex);
        this.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex);
    }
    

    public function addAt(countedPickedUpLayerInterfaceFactoryInterface:CountedPickedUpLayerInterfaceFactoryInterface, partIndex:int):void {
        var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
        var countedLayerInterfaceFactory:CountedLayerInterfaceFactoryPart = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex] as CountedLayerInterfaceFactoryPart);
        countedLayerInterfaceFactory.setTotal(int(countedLayerInterfaceFactory.getTotal() + countedPickedUpLayerInterfaceFactoryInterface.getTotal()));
    }
    

    public function getFirstAvailableCountedLayerInterfaceFactory(pickedUpLayerTypeArray:Vector.<PickedUpLayerType>):CountedLayerInterfaceFactoryPart {
        var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
        var partInterfaceArray:Vector.<PartInterface> = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        var size:int = partInterfaceArray.length;
        var nextCountedLayerInterfaceFactory:CountedLayerInterfaceFactoryPart = null;
        var countedPickedUpLayerInterfaceFactory:CountedPickedUpLayerInterfaceFactory = null;
        for (var index:int = this.countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[index] as CountedLayerInterfaceFactoryPart);
            countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
            for (var index2:int = pickedUpLayerTypeArray.length; --index2 >= 0; ) {
                if (countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() == pickedUpLayerTypeArray[index2]) {
                    if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                        return nextCountedLayerInterfaceFactory;
                    }
                }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    public function getCountedLayerInterfaceFactoryForSlot(slotIndex:int):CountedLayerInterfaceFactoryPart {
        var currentSlot:int = 0;
        var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
        var partInterfaceArray:Vector.<PartInterface> = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        var size:int = partInterfaceArray.length;
        var nextCountedLayerInterfaceFactory:CountedLayerInterfaceFactoryPart = null;
        for (var index:int = this.countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[index] as CountedLayerInterfaceFactoryPart);
            if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                if (currentSlot == slotIndex) {
                    return nextCountedLayerInterfaceFactory;
                } else {
                    currentSlot++;
                }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    public function getCountedIndex():int {
        return this.countedIndex;
    }
    }
}

