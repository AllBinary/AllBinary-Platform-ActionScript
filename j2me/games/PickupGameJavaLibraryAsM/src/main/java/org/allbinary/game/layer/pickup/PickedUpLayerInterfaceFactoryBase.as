/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
    import org.allbinary.layer.AllBinaryLayer;

    public class PickedUpLayerInterfaceFactoryBase implements PickedUpLayerInterfaceFactoryInterface {
    private static var NULL_PICKED_UP_LAYER_FACTORY_BASE_value:PickedUpLayerInterfaceFactoryBase;
    private static var NULL_PICKED_UP_LAYER_FACTORY_BASE_set:Boolean = false;
    public static function get NULL_PICKED_UP_LAYER_FACTORY_BASE():PickedUpLayerInterfaceFactoryBase {
        if (!PickedUpLayerInterfaceFactoryBase.NULL_PICKED_UP_LAYER_FACTORY_BASE_set) {
            PickedUpLayerInterfaceFactoryBase.NULL_PICKED_UP_LAYER_FACTORY_BASE_set = true;
            PickedUpLayerInterfaceFactoryBase.NULL_PICKED_UP_LAYER_FACTORY_BASE_value = new PickedUpLayerInterfaceFactoryBase();
        }
        return PickedUpLayerInterfaceFactoryBase.NULL_PICKED_UP_LAYER_FACTORY_BASE_value;
    }
    

    public function getIconLayer():AllBinaryLayer {
        throw new JException("RuntimeException", "");
    }
    

    public function getAnimationInterface():Animation {
        throw new JException("RuntimeException", "");
    }
    

    public function getPickedUpLayerType():PickedUpLayerType {
        throw new JException("RuntimeException", "");
    }
    }
}

