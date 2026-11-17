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
package org.allbinary.android {

    public class AndroidInfoFactory {
    private static var instance_value:AndroidInfoFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AndroidInfoFactory {
        if (!AndroidInfoFactory.instance_set) {
            AndroidInfoFactory.instance_set = true;
            AndroidInfoFactory.instance_value = new AndroidInfoFactory();
        }
        return AndroidInfoFactory.instance_value;
    }
        private var version:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAndroidInfoFactory():void {
    this.version = 8;
        }

        public function AndroidInfoFactory() {
            super();
            this.initFieldsAndroidInfoFactory();
        }
    

    public static function getInstance():AndroidInfoFactory {
        return AndroidInfoFactory.instance;
    }
    

    public function getVersion():int {
        return this.version;
    }
    }
}

