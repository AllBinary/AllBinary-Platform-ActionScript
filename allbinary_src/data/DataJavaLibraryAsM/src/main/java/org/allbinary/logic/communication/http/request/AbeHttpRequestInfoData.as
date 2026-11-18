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
package org.allbinary.logic.communication.http.request {

    public class AbeHttpRequestInfoData {
    private static var instance_value:AbeHttpRequestInfoData;
    private static var instance_set:Boolean = false;
    private static function get instance():AbeHttpRequestInfoData {
        if (!AbeHttpRequestInfoData.instance_set) {
            AbeHttpRequestInfoData.instance_set = true;
            AbeHttpRequestInfoData.instance_value = new AbeHttpRequestInfoData();
        }
        return AbeHttpRequestInfoData.instance_value;
    }
        public var HTTP_USER_AGENT:String = null;
        public var REMOTE_ADDRESS:String = null;
        public var REMOTE_HOST:String = null;
        public var REMOTE_HOST_BY_ADDRESS:String = null;
        public var REMOTE_PORT:String = null;
        public var REQUEST_FILE_PATH:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbeHttpRequestInfoData():void {
    this.HTTP_USER_AGENT = "HTTP_USER_AGENT";
    this.REMOTE_ADDRESS = "REMOTE_ADDRESS";
    this.REMOTE_HOST = "REMOTE_HOST";
    this.REMOTE_HOST_BY_ADDRESS = "REMOTE_HOST_BY_ADDRESS";
    this.REMOTE_PORT = "REMOTE_PORT";
    this.REQUEST_FILE_PATH = "REQUEST_FILE_PATH";
        }
    

    public static function getInstance():AbeHttpRequestInfoData {
        return AbeHttpRequestInfoData.instance;
    }
    

    public function AbeHttpRequestInfoData() {
        super();
        this.initFieldsAbeHttpRequestInfoData();
    }
    }
}

