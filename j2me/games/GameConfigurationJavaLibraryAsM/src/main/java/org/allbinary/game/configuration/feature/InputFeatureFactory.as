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

    public class InputFeatureFactory {
    private static var instance_value:InputFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():InputFeatureFactory {
        if (!InputFeatureFactory.instance_set) {
            InputFeatureFactory.instance_set = true;
            InputFeatureFactory.instance_value = new InputFeatureFactory();
        }
        return InputFeatureFactory.instance_value;
    }
        public var REMOVE_DUPLICATE_KEY_PRESSES:InputFeature = null;
        public var INPUT_MAPPING:InputFeature = null;
        public var MULTI_KEY_PRESS:InputFeature = null;
        public var SINGLE_KEY_REPEAT_PRESS:InputFeature = null;
        public var SINGLE_KEY_PRESS:InputFeature = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputFeatureFactory():void {
    this.REMOVE_DUPLICATE_KEY_PRESSES = new InputFeature("Remove Duplicate Key Presses");
    this.INPUT_MAPPING = new InputFeature("Input Mapping");
    this.MULTI_KEY_PRESS = new InputFeature("Multi Key Press");
    this.SINGLE_KEY_REPEAT_PRESS = new InputFeature("Single Key Repeat Press");
    this.SINGLE_KEY_PRESS = new InputFeature("Single Key Press");
        }
    

    public static function getInstance():InputFeatureFactory {
        return InputFeatureFactory.instance;
    }
    

    public function InputFeatureFactory() {
        super();
        this.initFieldsInputFeatureFactory();
    }
    

    public function isSingleKeyProcessing():Boolean {
        var features:Features = Features.getInstance();
        if (features.isFeature(this.SINGLE_KEY_REPEAT_PRESS) || features.isFeature(this.SINGLE_KEY_PRESS)) {
            return true;
        } else {
            return false;
        }
    }
    }
}

