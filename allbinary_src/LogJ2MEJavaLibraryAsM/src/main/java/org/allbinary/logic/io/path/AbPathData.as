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
package org.allbinary.logic.io.path {
    import org.allbinary.string.CommonSeps;

    public class AbPathData {
    private static var instance_value:AbPathData;
    private static var instance_set:Boolean = false;
    private static function get instance():AbPathData {
        if (!AbPathData.instance_set) {
            AbPathData.instance_set = true;
            AbPathData.instance_value = new AbPathData();
        }
        return AbPathData.instance_value;
    }
        public var EXTENSION_SEP:String = null;
        public var SEPARATORCHAR:int = 0;
        public var SEPARATOR:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbPathData():void {
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD;
    this.SEPARATORCHAR = "/".charCodeAt(0);
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH;
        }
    

    public static function getInstance():AbPathData {
        return AbPathData.instance;
    }
    

    public function AbPathData() {
        super();
        this.initFieldsAbPathData();
    }
    }
}

