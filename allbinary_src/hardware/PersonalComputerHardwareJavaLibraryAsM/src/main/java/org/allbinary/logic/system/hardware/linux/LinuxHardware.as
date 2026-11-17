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
    import java.io.JFileReader;
    import java.io.JLineNumberReader;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.FilePathData;
    import org.allbinary.logic.io.file.directory.SubDirectory;
    import org.allbinary.logic.string.StringMaker;
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
    import org.allbinary.logic.system.hardware.components.linux.Cpu;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;

    public class LinuxHardware implements HardwareInterface {
    private static const PCIFILE:String = "/proc/pci";
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
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

        // Java field initializers run after the base constructor
        private function initFieldsLinuxHardware():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
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
    this.NAME = "Linux Hardware Profile";
    this.MINHARDWARE = 5;
        }
    

    public function LinuxHardware(...args) {
        super();
        this.initFieldsLinuxHardware();
        this.jconstruct(args);
    }

    private function jconstruct(args:Array):void {
        if (args.length == 1) {
            (function(path:String):void {
        this.init(path);
            }).apply(this, args);
            return;
        }
        if (args.length == 0) {
            (function():void {
        this.init(LinuxHardware.PCIFILE);
        if (this.componentInterfaceVector.size() < this.MINHARDWARE) {
            throw new JException("Exception", "Not Enough Data For A Valid License On Linux");
        }
        var cpu:Cpu = new Cpu();
        if (cpu != null) {
            this.cpuInterfaceVector.add(cpu);
            this.componentInterfaceVector.add(cpu);
        }
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().OS)) {
            this.logUtil.putF("Hardware Data: " + this.toString(), this, this.commonStrings.CONSTRUCTOR);
        }
            }).apply(this, args);
            return;
        }
    }
    
    

    private function init(filePath:String):void {
        var lineNumberReader:LineNumberReader = null;
        try {
            this.init(lineNumberReader, filePath);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().OS)) {
                this.logUtil.put("Hardware Data: " + this.toString(), this, this.commonStrings.CONSTRUCTOR, e);
            }
            throw e;
        }
    }
    

    private function init(lineNumberReader:LineNumberReader, filePath:String):void {
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
            var pciFile:FileReader = new FileReader(filePath);
            lineNumberReader = new LineNumberReader(pciFile);
            if (lineNumberReader == null) {
                var fileVector:BasicArrayList = SubDirectory.getInstance().search(filePath, AbFile.createAbFile(FilePathData.getInstance().PATH_START));
                if (!fileVector.isEmpty()) {
                    var file:AbFile = (fileVector.get_(0) as AbFile);
                    lineNumberReader = new LineNumberReader(new FileReader(file.getPath()));
                }
                if (lineNumberReader == null) {
                    throw new JException("Exception", "No Linux File Data");
                }
            }
            if (lineNumberReader != null) {
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().OS)) {
                    this.logUtil.putF("PCI File Found", this, this.commonStrings.CONSTRUCTOR);
                }
                var nextLine:String = lineNumberReader.readLine();
                while (nextLine != null) {
                    if (this.isNextHardware(nextLine)) {
                        break;
                    }
                    nextLine = lineNumberReader.readLine();
                }
                while (this.isNextHardware(nextLine)) {
                    var componentData:StringMaker = new StringMaker();
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().OS)) {
                        this.logUtil.putF("Found Hardware Device: " + String(this.componentInterfaceVector.size()), this, this.commonStrings.CONSTRUCTOR);
                    }
                    componentData.append(nextLine);
                    componentData.append(CommonSeps.getInstance().NEW_LINE);
                    nextLine = lineNumberReader.readLine();
                    var componentType:String = PCComponentFactory.getInstance().getComponentType(nextLine);
                    while (true) {
                        componentData.append(nextLine);
                        componentData.append(CommonSeps.getInstance().NEW_LINE);
                        nextLine = lineNumberReader.readLine();
                        if (nextLine == null || this.isNextHardware(nextLine)) {
                            break;
                        }
                    }
                    var componentInterface:HardwareComponentInterface = PCComponentFactory.getInstance().getInstance2(componentType, componentData.toString());
                    if (componentInterface != null) {
                        this.componentInterfaceVector.add(componentInterface);
                    }
                }
            } else {
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().OS)) {
                    this.logUtil.putF("Could not load PCI File", this, this.commonStrings.CONSTRUCTOR);
                }
            }
            lineNumberReader.close();
        } finally {
            if (lineNumberReader != null) {
                lineNumberReader.close();
            }
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
            hardwareBuffer.append("Component ");
            hardwareBuffer.appendint(index);
            hardwareBuffer.append(": \n");
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
    

    public function isNextHardware(nextLine:String):Boolean {
        if (nextLine != null) {
            var index:int = JString.indexOf(nextLine, "Bus");
            if (index >= 0 && index < 4) {
                return true;
            }
        }
        return false;
    }
    }
}

