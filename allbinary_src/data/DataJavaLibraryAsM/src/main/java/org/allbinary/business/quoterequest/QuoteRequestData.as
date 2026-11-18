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
package org.allbinary.business.quoterequest {

    public class QuoteRequestData {
    private static var instance_value:QuoteRequestData;
    private static var instance_set:Boolean = false;
    private static function get instance():QuoteRequestData {
        if (!QuoteRequestData.instance_set) {
            QuoteRequestData.instance_set = true;
            QuoteRequestData.instance_value = new QuoteRequestData();
        }
        return QuoteRequestData.instance_value;
    }
        public var ID:String = null;
        public var PROJECT_INFO:String = null;
        public var CUSTOMER_COMMENTS:String = null;
        public var BUDGET:String = null;
        public var TIMEFRAME:String = null;
        public var COMMENTS:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsQuoteRequestData():void {
    this.ID = "QUOTEREQUEST_ID";
    this.PROJECT_INFO = "QUOTEREQUEST_PROJECT_INFO";
    this.CUSTOMER_COMMENTS = "QUOTEREQUEST_CUSTOMER_COMMENTS";
    this.BUDGET = "QUOTEREQUEST_BUDGET";
    this.TIMEFRAME = "QUOTEREQUEST_TIMEFRAME";
    this.COMMENTS = "QUOTEREQUEST_COMMENTS";
        }
    

    public static function getInstance():QuoteRequestData {
        return QuoteRequestData.instance;
    }
    

    public function QuoteRequestData() {
        super();
        this.initFieldsQuoteRequestData();
    }
    }
}

