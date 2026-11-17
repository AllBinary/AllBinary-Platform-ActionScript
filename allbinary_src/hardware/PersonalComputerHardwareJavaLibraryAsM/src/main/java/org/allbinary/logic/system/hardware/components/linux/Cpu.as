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
package org.allbinary.logic.system.hardware.components.linux {
    import java.io.JFileReader;
    import java.io.JLineNumberReader;
    import java.util.JHashMap;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.FilePathData;
    import org.allbinary.logic.io.file.directory.SubDirectory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.hardware.components.interfaces.CpuInterface;
    import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class Cpu implements CpuInterface, HardwareComponentInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var CPUFILE:String = null;
        private var cpuHashMap:JHashMap = null;

        // Java field initializers run after the base constructor
        private function initFieldsCpu():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.CPUFILE = "/proc/cpuinfo";
    this.cpuHashMap = null;
        }
    

    public function Cpu(...args) {
        super();
        this.initFieldsCpu();
        this.jconstruct(args);
    }

    private function jconstruct(args:Array):void {
        if (args.length == 1) {
            (function(filePath:String):void {
        this.init(filePath);
            }).apply(this, args);
            return;
        }
        if (args.length == 0) {
            (function():void {
        this.init(this.CPUFILE);
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
                this.logUtil.put(new StringMaker().append("Cpu Data: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR, e);
            }
            throw e;
        }
    }
    

    private function init(lineNumberReader:LineNumberReader, filePath:String):void {
        try {
            var fileReader:FileReader = new FileReader(filePath);
            lineNumberReader = new LineNumberReader(fileReader);
            this.cpuHashMap = StdUtil.getInstance().createHashMap();
            if (lineNumberReader == null) {
                var fileVector:BasicArrayList = SubDirectory.getInstance().search(filePath, AbFile.createAbFile(FilePathData.getInstance().PATH_START));
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().OS)) {
                    this.logUtil.putF(new StringMaker().append("Cpu File BasicArrayList Size: ").appendint(fileVector.size()).toString(), this, this.commonStrings.CONSTRUCTOR);
                }
                if (!fileVector.isEmpty()) {
                    var file:AbFile = (fileVector.get_(0) as AbFile);
                    lineNumberReader = new LineNumberReader(new FileReader(file.getPath()));
                }
            }
            if (lineNumberReader != null) {
                var nextLine:String = lineNumberReader.readLine();
                while (nextLine != null) {
                    var index:int = JString.indexOf(nextLine, ":".charCodeAt(0));
                    if (index >= 0) {
                        var key:String = nextLine.substring(0, index);
                        var valueIndex:int = int(index + 1);
                        var value:String = nextLine.substring(valueIndex, nextLine.length);
                        if (JString.indexOf(key, CpuInfo.PROCESSOR.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.PROCESSOR, value);
                        }
                        if (JString.indexOf(key, CpuInfo.VENDORID.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.VENDORID, value);
                        }
                        if (JString.indexOf(key, CpuInfo.CPUFAMILY.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.CPUFAMILY, value);
                        }
                        if (JString.indexOf(key, CpuInfo.MODEL.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.MODEL, value);
                        }
                        if (JString.indexOf(key, CpuInfo.MODELNAME.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.MODELNAME, value);
                        }
                        if (JString.indexOf(key, CpuInfo.STEPPING.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.STEPPING, value);
                        }
                        if (JString.indexOf(key, CpuInfo.CPUMHZ.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.CPUMHZ, value);
                        }
                        if (JString.indexOf(key, CpuInfo.CACHESIZE.toString()) >= 0) {
                            this.cpuHashMap.put(CpuInfo.CACHESIZE, value);
                        }
                    }
                    nextLine = lineNumberReader.readLine();
                }
            }
        } finally {
            if (lineNumberReader != null) {
                lineNumberReader.close();
            }
        }
    }
    

    public function getProcessor():String {
        return (this.cpuHashMap.get_(CpuInfo.PROCESSOR) as String);
    }
    

    public function getVendorId():String {
        return (this.cpuHashMap.get_(CpuInfo.VENDORID) as String);
    }
    

    public function getCpuFamily():String {
        return (this.cpuHashMap.get_(CpuInfo.CPUFAMILY) as String);
    }
    

    public function getModel():String {
        return (this.cpuHashMap.get_(CpuInfo.MODEL) as String);
    }
    

    public function getModelName():String {
        return (this.cpuHashMap.get_(CpuInfo.MODELNAME) as String);
    }
    

    public function getStepping():String {
        return (this.cpuHashMap.get_(CpuInfo.STEPPING) as String);
    }
    

    public function getCpuSpeed():String {
        return (this.cpuHashMap.get_(CpuInfo.CPUMHZ) as String);
    }
    

    public function getCacheSize():String {
        return (this.cpuHashMap.get_(CpuInfo.CACHESIZE) as String);
    }
    

    public function compareTo(cpuInterface:CpuInterface):Boolean {
        return true;
    }
    

    public function compareTo(componentInterface:HardwareComponentInterface):Boolean {
        return true;
    }
    

    public function toString():String {
        var commonLabels:CommonLabels = CommonLabels.getInstance();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var stringMaker:StringMaker = new StringMaker();
        stringMaker.append(CpuInfo.PROCESSOR.toString()).append(commonLabels.COLON_SEP).append(this.getProcessor());
        stringMaker.append(commonSeps.NEW_LINE);
        stringMaker.append(CpuInfo.VENDORID.toString()).append(commonLabels.COLON_SEP).append(this.getVendorId());
        stringMaker.append(commonSeps.NEW_LINE);
        stringMaker.append(CpuInfo.CPUFAMILY.toString()).append(commonLabels.COLON_SEP).append(this.getCpuFamily());
        stringMaker.append(commonSeps.NEW_LINE);
        stringMaker.append(CpuInfo.MODEL.toString()).append(commonLabels.COLON_SEP).append(this.getModel());
        stringMaker.append(commonSeps.NEW_LINE);
        stringMaker.append(CpuInfo.MODELNAME.toString()).append(commonLabels.COLON_SEP).append(this.getModelName());
        stringMaker.append(commonSeps.NEW_LINE);
        stringMaker.append(CpuInfo.STEPPING.toString()).append(commonLabels.COLON_SEP).append(this.getStepping());
        stringMaker.append(commonSeps.NEW_LINE);
        stringMaker.append(CpuInfo.CPUMHZ.toString()).append(commonLabels.COLON_SEP).append(this.getCpuSpeed());
        stringMaker.append(commonSeps.NEW_LINE);
        stringMaker.append(CpuInfo.CACHESIZE.toString()).append(commonLabels.COLON_SEP).append(this.getCacheSize());
        return stringMaker.toString();
    }
    }
}

