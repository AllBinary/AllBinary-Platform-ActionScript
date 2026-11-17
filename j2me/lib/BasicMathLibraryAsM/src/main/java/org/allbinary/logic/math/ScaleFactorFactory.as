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
package org.allbinary.logic.math {

    public class ScaleFactorFactory {
    private static var instance_value:ScaleFactorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ScaleFactorFactory {
        if (!ScaleFactorFactory.instance_set) {
            ScaleFactorFactory.instance_set = true;
            ScaleFactorFactory.instance_value = new ScaleFactorFactory();
        }
        return ScaleFactorFactory.instance_value;
    }
        public var DEFAULT_SCALE_FACTOR:int = 0;
        public var DEFAULT_SCALE_VALUE:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsScaleFactorFactory():void {
    this.DEFAULT_SCALE_FACTOR = 10;
    this.DEFAULT_SCALE_VALUE = 1024;
        }

        public function ScaleFactorFactory() {
            super();
            this.initFieldsScaleFactorFactory();
        }
    

    public static function getInstance():ScaleFactorFactory {
        return ScaleFactorFactory.instance;
    }
    }
}

