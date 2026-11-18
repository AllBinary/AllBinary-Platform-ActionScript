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
package org.allbinary.business.context.modules.storefronts {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class BasicStoreFrontFactory {
    private static var instance_value:BasicStoreFrontFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicStoreFrontFactory {
        if (!BasicStoreFrontFactory.instance_set) {
            BasicStoreFrontFactory.instance_set = true;
            BasicStoreFrontFactory.instance_value = new BasicStoreFrontFactory();
        }
        return BasicStoreFrontFactory.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicStoreFrontFactory():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():BasicStoreFrontFactory {
        return BasicStoreFrontFactory.instance;
    }
    

    public function BasicStoreFrontFactory() {
        super();
        this.initFieldsBasicStoreFrontFactory();
    }
    

    public function getInstance1(storeName:String):BasicStoreFrontInterface {
        try {
            var storeFronts:BasicStoreFrontsEntity = new BasicStoreFrontsEntity();
            return storeFronts.getStoreFrontInterface(storeName);
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            return null;
        }
    }
    }
}

