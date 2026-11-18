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
    import org.allbinary.layer.AllBinaryLayer;

    public class PickedUpLayerInterfaceFactory extends PickedUpLayerInterfaceFactoryBase {
        private var pickedUpLayerType:PickedUpLayerType = null;
        private var iconLayer:IconLayer = null;
        private var animationInterface:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsPickedUpLayerInterfaceFactory():void {
    
    
    
        }
    

    public function PickedUpLayerInterfaceFactory(pickeUpLayerType:PickedUpLayerType, iconLayer:IconLayer, animationInterface:Animation) {
        super();
        this.initFieldsPickedUpLayerInterfaceFactory();
        this.pickedUpLayerType = pickeUpLayerType;
        this.animationInterface = animationInterface;
        this.iconLayer = iconLayer;
    }
    

    override public function getIconLayer():AllBinaryLayer {
        return this.iconLayer;
    }
    

    override public function getAnimationInterface():Animation {
        return this.animationInterface;
    }
    

    override public function getPickedUpLayerType():PickedUpLayerType {
        return this.pickedUpLayerType;
    }
    }
}

