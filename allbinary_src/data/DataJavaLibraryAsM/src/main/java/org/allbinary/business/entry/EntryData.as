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
package org.allbinary.business.entry {

    public class EntryData {
    private static var instance_value:EntryData;
    private static var instance_set:Boolean = false;
    private static function get instance():EntryData {
        if (!EntryData.instance_set) {
            EntryData.instance_set = true;
            EntryData.instance_value = new EntryData();
        }
        return EntryData.instance_value;
    }
        public var ID:String = null;
        public var ENCRYPTION:String = null;
        public var TIMECREATED:String = null;
        public var LASTMODIFIED:String = null;
        public var DEFAULT:String = null;
        public var SPECIAL:String = null;
        public var ENABLE:String = null;
        public var YES:String = null;
        public var NO:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsEntryData():void {
    this.ID = "ENTRY_ID";
    this.ENCRYPTION = "ENTRY_ENCRYPTION";
    this.TIMECREATED = "ENTRY_TIMECREATED";
    this.LASTMODIFIED = "ENTRY_LASTMODIFIED";
    this.DEFAULT = "ENTRY_DEFAULT";
    this.SPECIAL = "ENTRY_SPECIAL";
    this.ENABLE = "ENTRY_ENABLE";
    this.YES = "Yes";
    this.NO = "No";
        }
    

    public static function getInstance():EntryData {
        return EntryData.instance;
    }
    

    public function EntryData() {
        super();
        this.initFieldsEntryData();
    }
    }
}

