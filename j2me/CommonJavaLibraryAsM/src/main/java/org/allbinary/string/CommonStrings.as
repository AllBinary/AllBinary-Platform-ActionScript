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
package org.allbinary.string {

    public class CommonStrings {
    private static var instance_value:CommonStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():CommonStrings {
        if (!CommonStrings.instance_set) {
            CommonStrings.instance_set = true;
            CommonStrings.instance_value = new CommonStrings();
        }
        return CommonStrings.instance_value;
    }
        public var EMPTY:String = null;
        public var CREATE_IMAGE:String = null;
        public var PLEASE_WAIT:String = null;
        public var PLEASE_WAIT_FOR_SERVER:String = null;
        public var PERIODS:String = null;
        public var LOADING:String = null;
        public var CONSTRUCTOR:String = null;
        public var START:String = null;
        public var END:String = null;
        public var EXCEPTION:String = null;
        public var EXCEPTION_LABEL:String = null;
        public var CLEANUP:String = null;
        public var INIT:String = null;
        public var CLOSE:String = null;
        public var UP:String = null;
        public var DOWN:String = null;
        public var LEFT:String = null;
        public var RIGHT:String = null;
        public var DIRECTION_NAME:Vector.<String> = null;
        public var CREATE:String = null;
        public var REMOVE:String = null;
        public var UPDATE:String = null;
        public var DELETE:String = null;
        public var delete_:String = null;
        public var LOAD:String = null;
        public var SAVE:String = null;
        public var ADD:String = null;
        public var DROP:String = null;
        public var INSERT:String = null;
        public var VISIT:String = null;
        public var START_METHOD_NAME:String = null;
        public var END_METHOD_NAME:String = null;
        public var GET:String = null;
        public var PROCESS:String = null;
        public var GET_INSTANCE:String = null;
        public var GET_LIST:String = null;
        public var RUN:String = null;
        public var START_RUNNABLE:String = null;
        public var RUNNING:String = null;
        public var END_RUNNABLE:String = null;
        public var DISABLE:String = null;
        public var ENABLE:String = null;
        public var SUCCESS:String = null;
        public var FAILURE:String = null;
        public var NOT_IMPLEMENTED:String = null;
        public var UNKNOWN:String = null;
        public var ON_EVENT:String = null;
        public var IS_VALID:String = null;
        public var TOSTRING:String = null;
        public var ADD_LISTENER:String = null;
        public var REMOVE_LISTENER:String = null;
        public var SIZE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommonStrings():void {
    this.EMPTY = "Empty";
    this.CREATE_IMAGE = "createImage";
    this.PLEASE_WAIT = "Please Wait";
    this.PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server...";
    this.PERIODS = "...";
    this.LOADING = "Loading...";
    this.CONSTRUCTOR = "Constructor";
    this.START = "Start";
    this.END = "End";
    this.EXCEPTION = "Exception";
    this.EXCEPTION_LABEL = "Exception: ";
    this.CLEANUP = "cleanup";
    this.INIT = "init";
    this.CLOSE = "close";
    this.UP = "up";
    this.DOWN = "down";
    this.LEFT = "left";
    this.RIGHT = "right";
    this.DIRECTION_NAME = new <String>[this.DOWN, this.LEFT, this.RIGHT, this.UP];
    this.CREATE = "Create";
    this.REMOVE = "Remove";
    this.UPDATE = "Update";
    this.DELETE = "Delete";
    this.delete_ = "delete";
    this.LOAD = "load";
    this.SAVE = "save";
    this.ADD = "Add";
    this.DROP = "Drop";
    this.INSERT = "Insert";
    this.VISIT = "visit";
    this.START_METHOD_NAME = this.START;
    this.END_METHOD_NAME = "end";
    this.GET = "get";
    this.PROCESS = "process";
    this.GET_INSTANCE = "getInstance";
    this.GET_LIST = "getList";
    this.RUN = "run";
    this.START_RUNNABLE = "Start Runnable";
    this.RUNNING = "Running";
    this.END_RUNNABLE = "End Runnable";
    this.DISABLE = "disable";
    this.ENABLE = "enable";
    this.SUCCESS = "Command Success";
    this.FAILURE = "Command Failed";
    this.NOT_IMPLEMENTED = "Not Implemented";
    this.UNKNOWN = "Unknown";
    this.ON_EVENT = "onEvent";
    this.IS_VALID = "isValid";
    this.TOSTRING = "toString";
    this.ADD_LISTENER = "addListener";
    this.REMOVE_LISTENER = "removeListener";
    this.SIZE = "size";
        }

        public function CommonStrings() {
            super();
            this.initFieldsCommonStrings();
        }
    

    public static function getInstance():CommonStrings {
        return CommonStrings.instance;
    }
    }
}

