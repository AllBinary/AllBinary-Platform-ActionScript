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
package org.allbinary.thirdparty.store {

    public class ThirdPartyStoreFactory {
    private static var instance_value:NoThirdPartyStore;
    private static var instance_set:Boolean = false;
    private static function get instance():NoThirdPartyStore {
        if (!ThirdPartyStoreFactory.instance_set) {
            ThirdPartyStoreFactory.instance_set = true;
            ThirdPartyStoreFactory.instance_value = new NoThirdPartyStore();
        }
        return ThirdPartyStoreFactory.instance_value;
    }
    

    public static function getInstance():ThirdPartyStore {
        return ThirdPartyStoreFactory.instance;
    }
    

    public function ThirdPartyStoreFactory() {
        super();
    }
    }
}

