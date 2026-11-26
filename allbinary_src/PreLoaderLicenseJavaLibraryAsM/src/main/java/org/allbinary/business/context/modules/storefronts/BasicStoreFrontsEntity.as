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
    import java.util.JHashMap;
    import org.allbinary.business.context.modules.storefront.StoreFrontData;
    import org.allbinary.business.init.InitSql;
    import org.allbinary.business.init.db.UserDbInitInfo;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;

    public class BasicStoreFrontsEntity extends InitSql {
        public var logUtil:LogUtil = null;
        public var tableName:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicStoreFrontsEntity():void {
    this.logUtil = LogUtil.getInstance();
    this.tableName = "storefronts";
        }
    

    public function BasicStoreFrontsEntity() {
        super(new UserDbInitInfo());
        this.initFieldsBasicStoreFrontsEntity();
        this.setTable(this.tableName);
    }
    

    public function getStoreFrontInterface(name:String):BasicStoreFrontInterface {
        var keysAndValues:JHashMap = StdUtil.getInstance().createHashMap();
        keysAndValues.put(StoreFrontData.getInstance().NAME, name);
        var storeHashMap:JHashMap = super.getRow(keysAndValues);
        if (storeHashMap == null) {
            throw new JException("Exception", "No Such Store: " + name);
        }
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
            this.logUtil.putF("StoreFront: " + storeHashMap.toString(), this, "getStore()");
        }
        return (new BasicStoreFront(storeHashMap) as BasicStoreFrontInterface);
    }
    }
}

