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
package org.allbinary.game.layer.resources {
    import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.image.ImageCache;
    import org.allbinary.logic.communication.log.LogUtil;

    public class OnDemandResources {
    private static var NULL_ON_DEMAND_RESOURCES_value:OnDemandResources;
    private static var NULL_ON_DEMAND_RESOURCES_set:Boolean = false;
    public static function get NULL_ON_DEMAND_RESOURCES():OnDemandResources {
        if (!OnDemandResources.NULL_ON_DEMAND_RESOURCES_set) {
            OnDemandResources.NULL_ON_DEMAND_RESOURCES_set = true;
            OnDemandResources.NULL_ON_DEMAND_RESOURCES_value = new OnDemandResources();
        }
        return OnDemandResources.NULL_ON_DEMAND_RESOURCES_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsOnDemandResources():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public function OnDemandResources() {
        super();
        this.initFieldsOnDemandResources();
    }
    

    public function waitFor():void {
    }
    

    public function init():void {
    }
    

    public function initAt(imageCache:ImageCache, resourceAnimationInterfaceFactoryInterfaceFactory:BaseResourceAnimationInterfaceFactoryInterfaceFactory, portion:int, loadingString:String, index:int):int {
        return 0;
    }
    }
}

