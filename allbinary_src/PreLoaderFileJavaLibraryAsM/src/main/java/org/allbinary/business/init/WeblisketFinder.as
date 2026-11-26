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
package org.allbinary.business.init {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.directory.SubDirectory;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class WeblisketFinder {
    private static var instance_value:WeblisketFinder;
    private static var instance_set:Boolean = false;
    private static function get instance():WeblisketFinder {
        if (!WeblisketFinder.instance_set) {
            WeblisketFinder.instance_set = true;
            WeblisketFinder.instance_value = new WeblisketFinder();
        }
        return WeblisketFinder.instance_value;
    }
    private static const KEY:String = "installerdata.dat";
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var subDirectory:SubDirectory = null;

        // Java field initializers run after the base constructor
        private function initFieldsWeblisketFinder():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.subDirectory = SubDirectory.getInstance();
        }
    

    public static function getInstance():WeblisketFinder {
        return WeblisketFinder.instance;
    }
    

    public function WeblisketFinder() {
        super();
        this.initFieldsWeblisketFinder();
    }
    

    public function findAll(path:String):BasicArrayList {
        try {
            this.logUtil.putF(this.commonStrings.START, this, "findAll");
            return this.subDirectory.search(WeblisketFinder.KEY, AbFile.createAbFile(path));
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "findAll", e);
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "findAll", e);
            }
            return null;
        }
    }
    

    public function getInstallationPath(file:AbFile):String {
        try {
            var filePath:String = file.getPath();
            var end:int = JString.indexOf(filePath, WeblisketFinder.KEY);
            if (end < 0) {
                return null;
            }
            return filePath.substring(0, end);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "getInstallationPath", e);
            }
            return null;
        }
    }
    

    public static function main(args:Vector.<String>):void {
        var stringUtil:StringUtil = StringUtil.getInstance();
        var vector:BasicArrayList = WeblisketFinder.getInstance().findAll(stringUtil.EMPTY_STRING);
        trace(String(vector.size()));
    }
    }
}

