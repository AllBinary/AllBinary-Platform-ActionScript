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
package org.allbinary.game.configuration.feature {

    public class MainFeatureFactory {
    private static var instance_value:MainFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():MainFeatureFactory {
        if (!MainFeatureFactory.instance_set) {
            MainFeatureFactory.instance_set = true;
            MainFeatureFactory.instance_value = new MainFeatureFactory();
        }
        return MainFeatureFactory.instance_value;
    }
        public var FULL_SCREEN:Feature = null;
        public var TITLE_BAR:Feature = null;
        public var STATIC:Feature = null;
        public var LOAD_ONDEMAND:Feature = null;
        public var LOAD_ALL:Feature = null;

        // Java field initializers run after the base constructor
        private function initFieldsMainFeatureFactory():void {
    this.FULL_SCREEN = new Feature("Full Screen");
    this.TITLE_BAR = new Feature("Title Bar");
    this.STATIC = new Feature("Static Dependent Feature");
    this.LOAD_ONDEMAND = new Feature("Load OnDemand");
    this.LOAD_ALL = new Feature("Load All");
        }

        public function MainFeatureFactory() {
            super();
            this.initFieldsMainFeatureFactory();
        }
    

    public static function getInstance():MainFeatureFactory {
        return MainFeatureFactory.instance;
    }
    }
}

