/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.game.configuration.persistance {

    public class PersistanceStrings {
    private static var instance_value:PersistanceStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():PersistanceStrings {
        if (!PersistanceStrings.instance_set) {
            PersistanceStrings.instance_set = true;
            PersistanceStrings.instance_value = new PersistanceStrings();
        }
        return PersistanceStrings.instance_value;
    }
        public var SAVING:String = null;
        public var NUMBER_OF_RECORDS:String = null;
        public var LOADING_ID:String = null;
        public var LOAD_ALL:String = null;
        public var DELETING_WITH_ID:String = null;
        public var CLOSING_RECORDSTORE:String = null;
        public var NOT_SAVING:String = null;
        public var ERROR_LOADING:String = null;
        public var ERROR_LOADING_ID:String = null;
        public var ID:String = null;
        public var GAME_ACTION_INPUT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPersistanceStrings():void {
    this.SAVING = "Saving: ";
    this.NUMBER_OF_RECORDS = "Number of records: ";
    this.LOADING_ID = "Loading data with id: ";
    this.LOAD_ALL = "loadAll";
    this.DELETING_WITH_ID = "Deleting data with id: ";
    this.CLOSING_RECORDSTORE = "Closing RecordStore";
    this.NOT_SAVING = "Not Saving: ";
    this.ERROR_LOADING = "Error Loading gameActionInput: ";
    this.ERROR_LOADING_ID = "Error Loading id: ";
    this.ID = " id: ";
    this.GAME_ACTION_INPUT = " GameActionInput: ";
        }

        public function PersistanceStrings() {
            super();
            this.initFieldsPersistanceStrings();
        }
    

    public static function getInstance():PersistanceStrings {
        return PersistanceStrings.instance;
    }
    }
}

