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

    public class ThirdPartyMessageFactory {
    private static var instance_value:ThirdPartyMessageFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ThirdPartyMessageFactory {
        if (!ThirdPartyMessageFactory.instance_set) {
            ThirdPartyMessageFactory.instance_set = true;
            ThirdPartyMessageFactory.instance_value = new ThirdPartyMessageFactory();
        }
        return ThirdPartyMessageFactory.instance_value;
    }
        public var AUTHORIZED:String = null;
        public var NOT_AUTHORIZED:String = null;
        public var LINKAGE_ERROR:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsThirdPartyMessageFactory():void {
    this.AUTHORIZED = "Authorized";
    this.NOT_AUTHORIZED = "Not Authorized";
    this.LINKAGE_ERROR = "Linkage Error";
        }

        public function ThirdPartyMessageFactory() {
            super();
            this.initFieldsThirdPartyMessageFactory();
        }
    

    public static function getInstance():ThirdPartyMessageFactory {
        return ThirdPartyMessageFactory.instance;
    }
    }
}

