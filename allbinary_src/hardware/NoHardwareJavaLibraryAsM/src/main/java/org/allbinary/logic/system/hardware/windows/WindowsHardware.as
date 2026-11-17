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
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.hardware.HardwareInterface;
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
    import org.allbinary.util.ABHashtable;

    public class WindowsHardware implements HardwareInterface {
    

    public function WindowsHardware() {
        super();
    }
    

    public function getMultimedia(index:int):MediaInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getBridge(index:int):BridgeInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getCpu(index:int):CpuInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getEthernet(index:int):EthernetInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getFireWire(index:int):FireWireInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getHardDriveController(index:int):HardDriveControllerInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getHardDrive(index:int):HardDriveInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getMachineAccessControlAddress(index:int):MachineAccessControlAddressInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getMonitor(index:int):MonitorInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getUsb(index:int):UsbInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getVideo(index:int):VideoInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function getComponent(index:int):HardwareComponentInterface {
        throw new JException("RuntimeException", "");
    }
    

    public function toString():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function compareTo(hardwareInterface:HardwareInterface):Boolean {
        return true;
    }
    

    public function difference(hardwareInterface:HardwareInterface):ABHashtable {
        return StdUtil.getInstance().NULL_TABLE;
    }
    }
}

