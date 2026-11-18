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
package org.allbinary.game.input {
    import org.allbinary.game.input.mapping.PersistentInputMapping;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class PlatformInputMappingFactory {
    private static var instance_value:PlatformInputMappingFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():PlatformInputMappingFactory {
        if (!PlatformInputMappingFactory.instance_set) {
            PlatformInputMappingFactory.instance_set = true;
            PlatformInputMappingFactory.instance_value = new PlatformInputMappingFactory();
        }
        return PlatformInputMappingFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var inputToGameKeyMapping:PersistentInputMapping = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlatformInputMappingFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.inputToGameKeyMapping = PersistentInputMapping.getNullInstance();
        }

        public function PlatformInputMappingFactory() {
            super();
            this.initFieldsPlatformInputMappingFactory();
        }
    

    public static function getInstance():PlatformInputMappingFactory {
        return PlatformInputMappingFactory.instance;
    }
    

    public function getPersistentInputMappingInstance():PersistentInputMapping {
        try {
            if (this.inputToGameKeyMapping == PersistentInputMapping.getNullInstance()) {
                this.inputToGameKeyMapping = new LaptopGameInputMapping();
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
        }
        return this.inputToGameKeyMapping;
    }
    }
}

