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
    import org.allbinary.debug.DebugFactory;
    import org.allbinary.debug.NoDebug;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class LicenseInitInfo {
        private var id:String = null;
        private var serverList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsLicenseInitInfo():void {
    this.id = StringUtil.getInstance().EMPTY_STRING;
    this.serverList = new BasicArrayListD();
        }
    

    public function LicenseInitInfo() {
        super();
        this.initFieldsLicenseInitInfo();
    }
    

    public function getLicenseId():String {
        return this.id;
    }
    

    public function getServer(index:int):String {
        return (this.serverList.get_(index) as String);
    }
    

    public function getNumberOfServers():int {
        return this.serverList.size();
    }
    

    public function setLicenseId(value:String):void {
        this.id = value;
    }
    

    public function clearServers():void {
        this.serverList.clear();
    }
    

    public function setServer(value:String, index:int):void {
        this.serverList.addAt(index, value);
    }
    

    public function addServer(value:String):void {
        this.serverList.add(value);
    }
    

    public function getServerList():BasicArrayList {
        return this.serverList;
    }
    

    public function setServerList(servers:BasicArrayList):void {
        if (DebugFactory.getInstance() == NoDebug.getInstance()) {
            this.serverList = servers;
        }
    }
    }
}

