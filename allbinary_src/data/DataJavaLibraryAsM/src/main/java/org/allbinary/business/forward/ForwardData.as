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
package org.allbinary.business.forward {

    public class ForwardData {
    private static var instance_value:ForwardData;
    private static var instance_set:Boolean = false;
    private static function get instance():ForwardData {
        if (!ForwardData.instance_set) {
            ForwardData.instance_set = true;
            ForwardData.instance_value = new ForwardData();
        }
        return ForwardData.instance_value;
    }
        public var PAGE:String = null;
        public var NAME:String = null;
        public var VALUE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsForwardData():void {
    this.PAGE = "FORWARD_PAGE";
    this.NAME = "FORWARD_NAME";
    this.VALUE = "FORWARD_VALUE";
        }
    

    public function ForwardData() {
        super();
        this.initFieldsForwardData();
    }
    

    public static function getInstance():ForwardData {
        return ForwardData.instance;
    }
    }
}

