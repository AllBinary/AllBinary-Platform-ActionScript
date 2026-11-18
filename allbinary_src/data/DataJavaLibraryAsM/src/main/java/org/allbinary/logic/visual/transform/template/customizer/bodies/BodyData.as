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
package org.allbinary.logic.visual.transform.template.customizer.bodies {

    public class BodyData {
    private static var instance_value:BodyData;
    private static var instance_set:Boolean = false;
    private static function get instance():BodyData {
        if (!BodyData.instance_set) {
            BodyData.instance_set = true;
            BodyData.instance_value = new BodyData();
        }
        return BodyData.instance_value;
    }
        public var NAME:String = null;
        public var VIEWNAMEKEY:String = null;
        public var MIN:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBodyData():void {
    this.NAME = "BODY_NAME";
    this.VIEWNAMEKEY = "Body";
    this.MIN = 0;
        }
    

    public function BodyData() {
        super();
        this.initFieldsBodyData();
    }
    

    public static function getInstance():BodyData {
        return BodyData.instance;
    }
    }
}

