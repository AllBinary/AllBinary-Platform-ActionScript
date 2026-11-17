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
package org.allbinary.logic.system.hardware.linux {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.system.hardware.components.ComponentFactory;
    import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface;
    import org.allbinary.logic.system.hardware.components.linux.Bridge;
    import org.allbinary.logic.system.hardware.components.linux.Ethernet;
    import org.allbinary.logic.system.hardware.components.linux.HardDriveController;
    import org.allbinary.logic.system.hardware.components.linux.Media;
    import org.allbinary.logic.system.hardware.components.linux.PCI;
    import org.allbinary.logic.system.hardware.components.linux.Unknown;
    import org.allbinary.logic.system.hardware.components.linux.Usb;
    import org.allbinary.logic.system.hardware.components.linux.Video;
    import org.allbinary.string.CommonStrings;

    public class PCComponentFactory {
    private static var instance_value:PCComponentFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():PCComponentFactory {
        if (!PCComponentFactory.instance_set) {
            PCComponentFactory.instance_set = true;
            PCComponentFactory.instance_value = new PCComponentFactory();
        }
        return PCComponentFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var componentFactory:ComponentFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsPCComponentFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.componentFactory = ComponentFactory.getInstance();
        }
    

    public static function getInstance():PCComponentFactory {
        return PCComponentFactory.instance;
    }
    

    public function PCComponentFactory() {
        super();
        this.initFieldsPCComponentFactory();
    }
    

    public function getInstance2(component:String, componentData:String):HardwareComponentInterface {
        try {
            if (component != null) {
                if (JString.compareTo(component, this.componentFactory.ETHERNET.toString()) == 0) {
                    return (new Ethernet(componentData) as HardwareComponentInterface);
                } else if (JString.compareTo(component, this.componentFactory.BRIDGE.toString()) == 0) {
                    return (new Bridge(componentData) as HardwareComponentInterface);
                } else if (JString.compareTo(component, this.componentFactory.IDE.toString()) == 0) {
                    return (new HardDriveController(componentData) as HardwareComponentInterface);
                } else if (JString.compareTo(component, this.componentFactory.MULTIMEDIA.toString()) == 0) {
                    return (new Media(componentData) as HardwareComponentInterface);
                } else if (JString.compareTo(component, this.componentFactory.SCSI.toString()) == 0) {
                    return (new HardDriveController(componentData) as HardwareComponentInterface);
                } else if (JString.compareTo(component, this.componentFactory.USB.toString()) == 0) {
                    return (new Usb(componentData) as HardwareComponentInterface);
                } else if (JString.compareTo(component, this.componentFactory.VGA.toString()) == 0) {
                    return (new Video(componentData) as HardwareComponentInterface);
                } else if (JString.compareTo(component, this.componentFactory.PCI.toString()) == 0) {
                    return (new PCI(componentData) as HardwareComponentInterface);
                }
            }
            return (new Unknown(componentData) as HardwareComponentInterface);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            return new Unknown(commonStrings.EXCEPTION);
        }
    }
    

    public function getComponentType(component:String):String {
        if (JString.indexOf(component, this.componentFactory.ETHERNET.toString()) >= 0) {
            return this.componentFactory.ETHERNET.toString();
        } else if (JString.indexOf(component, this.componentFactory.BRIDGE.toString()) >= 0) {
            return this.componentFactory.BRIDGE.toString();
        } else if (JString.indexOf(component, this.componentFactory.IDE.toString()) >= 0) {
            return this.componentFactory.IDE.toString();
        } else if (JString.indexOf(component, this.componentFactory.MULTIMEDIA.toString()) >= 0) {
            return this.componentFactory.MULTIMEDIA.toString();
        } else if (JString.indexOf(component, this.componentFactory.SCSI.toString()) >= 0) {
            return this.componentFactory.SCSI.toString();
        } else if (JString.indexOf(component, this.componentFactory.USB.toString()) >= 0) {
            return this.componentFactory.USB.toString();
        } else if (JString.indexOf(component, this.componentFactory.VGA.toString()) >= 0) {
            return this.componentFactory.VGA.toString();
        } else if (JString.compareTo(component, this.componentFactory.PCI.toString()) == 0) {
            return this.componentFactory.PCI.toString();
        }
        return this.componentFactory.UNKNOWN.toString();
    }
    }
}

