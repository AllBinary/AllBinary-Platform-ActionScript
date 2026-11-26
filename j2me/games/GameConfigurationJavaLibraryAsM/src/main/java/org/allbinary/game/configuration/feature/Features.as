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
    import org.allbinary.game.configuration.event.GameFeatureEvent;
    import org.allbinary.game.configuration.event.GameFeatureEventHandler;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.OperatingSystemFactory;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class Features {
    private static var SINGLETON_value:Object;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():Object {
        if (!Features.SINGLETON_set) {
            Features.SINGLETON_set = true;
            Features.SINGLETON_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return Features.SINGLETON_value;
    }
    private static function set SINGLETON(value:Object):void {
        Features.SINGLETON_set = true;
        Features.SINGLETON_value = value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var list:BasicArrayList = null;
        private var defaultList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsFeatures():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
        }
    

    public static function getInstance():Features {
        if (Features.SINGLETON == NullUtil.getInstance().NULL_OBJECT) {
            Features.SINGLETON = new Features();
        }
        return (Features.SINGLETON as Features);
    }
    

    public function Features() {
        super();
        this.initFieldsFeatures();
        this.list = new BasicArrayListD();
        this.defaultList = new BasicArrayListD();
        this.init();
    }
    

    public function addDefault(gameFeature:Feature):void {
        this.add(gameFeature);
        if (!this.defaultList.contains(gameFeature)) {
            this.defaultList.add(gameFeature);
        }
    }
    

    public function add(gameFeature:Feature):void {
        if (!this.list.contains(gameFeature)) {
            this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, this.commonStrings.ADD);
            this.list.add(gameFeature);
            GameFeatureEventHandler.getInstance().fireEvent(new GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    public function removeDefault(gameFeature:Feature):void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, "removeDefault");
        this.remove(gameFeature);
        this.defaultList.remove(gameFeature);
    }
    

    public function remove(gameFeature:Feature):void {
        if (this.list.contains(gameFeature)) {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.REMOVE);
            this.list.remove(gameFeature);
            GameFeatureEventHandler.getInstance().fireEvent(new GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    private function init():void {
        try {
            var gameFeatureFactory:GameFeatureFactory = GameFeatureFactory.getInstance();
            var inputFeatureFactory:InputFeatureFactory = InputFeatureFactory.getInstance();
            var sensorFeatureFactory:SensorFeatureFactory = SensorFeatureFactory.getInstance();
            var touchFeatureFactory:TouchFeatureFactory = TouchFeatureFactory.getInstance();
            this.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
            this.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
            this.addDefault(inputFeatureFactory.MULTI_KEY_PRESS);
            this.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES);
            this.addDefault(gameFeatureFactory.SCREEN_SHAKE);
            this.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION);
            var operatingSystemInterface:GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
            if (operatingSystemInterface.isOverScan()) {
                this.addDefault(sensorFeatureFactory.NO_ORIENTATION);
                this.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            } else {
                this.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS);
                this.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            }
            this.addDefault(touchFeatureFactory.TOUCH_ENABLED);
            this.addDefault(MainFeatureFactory.getInstance().FULL_SCREEN);
            this.addDefault(MainFeatureFactory.getInstance().LOAD_ONDEMAND);
        } catch (e:*) {
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
        }
    }
    

    public function isDefault(gameFeature:Feature):Boolean {
        return this.defaultList.contains(gameFeature);
    }
    

    public function isFeature(gameFeature:Feature):Boolean {
        return this.list.contains(gameFeature);
    }
    

    public function toggle(gameFeature:Feature):void {
        if (this.isFeature(gameFeature)) {
            this.remove(gameFeature);
        } else {
            this.add(gameFeature);
        }
    }
    }
}

