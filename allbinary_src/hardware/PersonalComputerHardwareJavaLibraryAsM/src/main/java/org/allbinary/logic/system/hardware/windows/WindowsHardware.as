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
package org.allbinary.logic.system.hardware.windows {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.hardware.HardwareInterface;
    import org.allbinary.logic.system.hardware.components.ComponentFactory;
    import org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.CpuInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.MediaInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.UsbInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.VideoInterface;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.ABHashtable;

    public class WindowsHardware implements HardwareInterface {
        private var componentInterfaceVector:BasicArrayList = null;
        private var videoInterfaceVector:BasicArrayList = null;
        private var hardDriveControllerInterfaceVector:BasicArrayList = null;
        private var cpuInterfaceVector:BasicArrayList = null;
        private var usbInterfaceVector:BasicArrayList = null;
        private var ethernetInterfaceVector:BasicArrayList = null;
        private var multimediaInterfaceVector:BasicArrayList = null;
        private var fireWireInterfaceVector:BasicArrayList = null;
        private var bridgeInterfaceVector:BasicArrayList = null;
        private var hardDriveInterfaceVector:BasicArrayList = null;
        private var macInterfaceVector:BasicArrayList = null;
        private var monitorInterfaceVector:BasicArrayList = null;
        private var NAME:String = null;
        private var MINHARDWARE:int = 0;
        private var componentFactory:ComponentFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsWindowsHardware():void {
    this.componentInterfaceVector = null;
    this.videoInterfaceVector = null;
    this.hardDriveControllerInterfaceVector = null;
    this.cpuInterfaceVector = null;
    this.usbInterfaceVector = null;
    this.ethernetInterfaceVector = null;
    this.multimediaInterfaceVector = null;
    this.fireWireInterfaceVector = null;
    this.bridgeInterfaceVector = null;
    this.hardDriveInterfaceVector = null;
    this.macInterfaceVector = null;
    this.monitorInterfaceVector = null;
    this.NAME = "Windows Hardware Profile";
    this.MINHARDWARE = 0;
    this.componentFactory = ComponentFactory.getInstance();
        }
    

    public function WindowsHardware() {
        super();
        this.initFieldsWindowsHardware();
        try {
            this.componentInterfaceVector = new BasicArrayListD();
            this.videoInterfaceVector = new BasicArrayListD();
            this.hardDriveControllerInterfaceVector = new BasicArrayListD();
            this.cpuInterfaceVector = new BasicArrayListD();
            this.usbInterfaceVector = new BasicArrayListD();
            this.ethernetInterfaceVector = new BasicArrayListD();
            this.multimediaInterfaceVector = new BasicArrayListD();
            this.fireWireInterfaceVector = new BasicArrayListD();
            this.bridgeInterfaceVector = new BasicArrayListD();
            this.hardDriveInterfaceVector = new BasicArrayListD();
            this.macInterfaceVector = new BasicArrayListD();
            this.monitorInterfaceVector = new BasicArrayListD();
            if (this.componentInterfaceVector.size() < this.MINHARDWARE) {
                throw new JException("Exception", "Not Enough Data For A Valid License On Windows");
            }
        } catch (e:*) {
            throw e;
        }
    }
    

    private function getComponentType(component:String):String {
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
        } else {
            return null;
        }
    }
    

    public function getMultimedia(index:int):MediaInterface {
        return (this.multimediaInterfaceVector.get_(index) as MediaInterface);
    }
    

    public function getBridge(index:int):BridgeInterface {
        return (this.bridgeInterfaceVector.get_(index) as BridgeInterface);
    }
    

    public function getCpu(index:int):CpuInterface {
        return (this.cpuInterfaceVector.get_(index) as CpuInterface);
    }
    

    public function getEthernet(index:int):EthernetInterface {
        return (this.ethernetInterfaceVector.get_(index) as EthernetInterface);
    }
    

    public function getFireWire(index:int):FireWireInterface {
        return (this.fireWireInterfaceVector.get_(index) as FireWireInterface);
    }
    

    public function getHardDriveController(index:int):HardDriveControllerInterface {
        return (this.hardDriveControllerInterfaceVector.get_(index) as HardDriveControllerInterface);
    }
    

    public function getHardDrive(index:int):HardDriveInterface {
        return (this.hardDriveInterfaceVector.get_(index) as HardDriveInterface);
    }
    

    public function getMachineAccessControlAddress(index:int):MachineAccessControlAddressInterface {
        return (this.macInterfaceVector.get_(index) as MachineAccessControlAddressInterface);
    }
    

    public function getMonitor(index:int):MonitorInterface {
        return (this.monitorInterfaceVector.get_(index) as MonitorInterface);
    }
    

    public function getUsb(index:int):UsbInterface {
        return (this.usbInterfaceVector.get_(index) as UsbInterface);
    }
    

    public function getVideo(index:int):VideoInterface {
        return (this.videoInterfaceVector.get_(index) as VideoInterface);
    }
    

    public function getComponent(index:int):HardwareComponentInterface {
        return (this.componentInterfaceVector.get_(index) as HardwareComponentInterface);
    }
    

    public function toString():String {
        var hardwareBuffer:StringMaker = new StringMaker();
        var size:int = this.componentInterfaceVector.size();
        for (var index:int = 0; index < size; index++) {
            var componentInterface:HardwareComponentInterface = (this.componentInterfaceVector.get_(index) as HardwareComponentInterface);
            hardwareBuffer.append(componentInterface.toString());
            hardwareBuffer.append(CommonSeps.getInstance().NEW_LINE);
        }
        return hardwareBuffer.toString();
    }
    

    public function compareTo(hardwareInterface:HardwareInterface):Boolean {
        return true;
    }
    

    public function difference(hardwareInterface:HardwareInterface):ABHashtable {
        return StdUtil.getInstance().NULL_TABLE;
    }
    }
}

