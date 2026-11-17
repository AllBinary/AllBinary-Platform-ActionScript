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
package org.allbinary.logic.communication.http {
    import org.allbinary.string.CommonSeps;

    public class HttpData {
    private static var instance_value:HttpData;
    private static var instance_set:Boolean = false;
    private static function get instance():HttpData {
        if (!HttpData.instance_set) {
            HttpData.instance_set = true;
            HttpData.instance_value = new HttpData();
        }
        return HttpData.instance_value;
    }
        public var EQUALS:String = null;
        public var PARAM_SEP:String = null;
        public var URL_PARAM_SEP:String = null;
        public var URL_LABEL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHttpData():void {
    
    
    
    this.URL_LABEL = "Url: ";
        }
    

    public static function getInstance():HttpData {
        return HttpData.instance;
    }
    

    public function HttpData() {
        super();
        this.initFieldsHttpData();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.PARAM_SEP = commonSeps.AMPERSAND;
        this.URL_PARAM_SEP = commonSeps.QUESTION;
    }
    }
}

