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
package org.allbinary.logic.system.hardware.components {
    import org.allbinary.string.CommonStrings;

    public class ComponentFactory {
    private static var instance_value:ComponentFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ComponentFactory {
        if (!ComponentFactory.instance_set) {
            ComponentFactory.instance_set = true;
            ComponentFactory.instance_value = new ComponentFactory();
        }
        return ComponentFactory.instance_value;
    }
        public var VGA:Component = null;
        public var IDE:Component = null;
        public var SCSI:Component = null;
        public var BRIDGE:Component = null;
        public var ETHERNET:Component = null;
        public var USB:Component = null;
        public var MULTIMEDIA:Component = null;
        public var PCI:Component = null;
        public var RAID:Component = null;
        public var SMBUS:Component = null;
        public var PIC:Component = null;
        public var Class:Component = null;
        public var UNKNOWN:Component = null;

        // Java field initializers run after the base constructor
        private function initFieldsComponentFactory():void {
    this.VGA = new Component("VGA");
    this.IDE = new Component("IDE");
    this.SCSI = new Component("SCSI");
    this.BRIDGE = new Component("bridge");
    this.ETHERNET = new Component("Ethernet");
    this.USB = new Component("USB");
    this.MULTIMEDIA = new Component("Multimedia");
    this.PCI = new Component("PCI");
    this.RAID = new Component("RAID");
    this.SMBUS = new Component("SMBus");
    this.PIC = new Component("PIC");
    this.Class = new Component("Class");
    this.UNKNOWN = new Component(CommonStrings.getInstance().UNKNOWN);
        }

        public function ComponentFactory() {
            super();
            this.initFieldsComponentFactory();
        }
    

    public static function getInstance():ComponentFactory {
        return ComponentFactory.instance;
    }
    }
}

