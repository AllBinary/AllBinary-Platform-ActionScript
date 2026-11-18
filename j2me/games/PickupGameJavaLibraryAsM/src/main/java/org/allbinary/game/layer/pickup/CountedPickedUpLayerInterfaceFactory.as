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
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;

    public class CountedPickedUpLayerInterfaceFactory extends PickedUpLayerInterfaceFactory implements CountedPickedUpLayerInterfaceFactoryInterface {
    private static var NULL_COUNTED_PICKUP_LAYER_FACTORY_value:CountedPickedUpLayerInterfaceFactory;
    private static var NULL_COUNTED_PICKUP_LAYER_FACTORY_set:Boolean = false;
    public static function get NULL_COUNTED_PICKUP_LAYER_FACTORY():CountedPickedUpLayerInterfaceFactory {
        if (!CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY_set) {
            CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY_set = true;
            CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY_value = new CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer.NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance1(0));
        }
        return CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY_value;
    }
        private var id:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCountedPickedUpLayerInterfaceFactory():void {
    
        }
    

    public function CountedPickedUpLayerInterfaceFactory(pickeUpLayerType:PickedUpLayerType, iconLayer:IconLayer, animationInterface:Animation) {
        super(pickeUpLayerType, iconLayer, animationInterface);
        this.initFieldsCountedPickedUpLayerInterfaceFactory();
        var list:BasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        this.id = list.size();
        list.add(this);
    }
    

    public function getNextInstance(hashtable:ABHashtable, x:int, y:int, z:int):AllBinaryLayer {
        throw new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    public function getTotal():int {
        return -1;
    }
    

    public function getId():int {
        return this.id;
    }
    }
}

