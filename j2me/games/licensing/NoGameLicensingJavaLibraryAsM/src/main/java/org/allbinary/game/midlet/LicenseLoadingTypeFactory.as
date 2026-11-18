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
package org.allbinary.game.midlet {

    public class LicenseLoadingTypeFactory {
    private static var instance_value:LicenseLoadingTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LicenseLoadingTypeFactory {
        if (!LicenseLoadingTypeFactory.instance_set) {
            LicenseLoadingTypeFactory.instance_set = true;
            LicenseLoadingTypeFactory.instance_value = new LicenseLoadingTypeFactory();
        }
        return LicenseLoadingTypeFactory.instance_value;
    }
        public var INITIAL_LOADING:LicenseLoadingType = null;
        public var GAME_START:LicenseLoadingType = null;
        public var LOGIN:LicenseLoadingType = null;
        public var OTHER:LicenseLoadingType = null;

        // Java field initializers run after the base constructor
        private function initFieldsLicenseLoadingTypeFactory():void {
    this.INITIAL_LOADING = new LicenseLoadingType("Initial Loading");
    this.GAME_START = new LicenseLoadingType("Game Start");
    this.LOGIN = new LicenseLoadingType("Login");
    this.OTHER = new LicenseLoadingType("Other/Usually The First Non Demo Level");
        }

        public function LicenseLoadingTypeFactory() {
            super();
            this.initFieldsLicenseLoadingTypeFactory();
        }
    

    public static function getIntance():LicenseLoadingTypeFactory {
        return LicenseLoadingTypeFactory.instance;
    }
    }
}

