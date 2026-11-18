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
package org.allbinary.game.resource {
    import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class FeatureResourceInitializationUtil {
    private static var instance_value:FeatureResourceInitializationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():FeatureResourceInitializationUtil {
        if (!FeatureResourceInitializationUtil.instance_set) {
            FeatureResourceInitializationUtil.instance_set = true;
            FeatureResourceInitializationUtil.instance_value = new FeatureResourceInitializationUtil();
        }
        return FeatureResourceInitializationUtil.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsFeatureResourceInitializationUtil():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function FeatureResourceInitializationUtil() {
            super();
            this.initFieldsFeatureResourceInitializationUtil();
        }
    

    public static function getInstance():FeatureResourceInitializationUtil {
        return FeatureResourceInitializationUtil.instance;
    }
    

    public function init(level:int):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        this.logUtil.putF(commonStrings.START, this, commonStrings.INIT);
        var featuredResourceFactory:FeaturedResourceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredResourceFactory.init(level);
        FeaturedResourceRelativeRelationshipFactory.getInstance().init(level);
    }
    }
}

