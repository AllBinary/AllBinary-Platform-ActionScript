/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.logic.communication.log.config.type {
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;

    public class LogConfigTypeFactory {
    private static var instance_value:LogConfigTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LogConfigTypeFactory {
        if (!LogConfigTypeFactory.instance_set) {
            LogConfigTypeFactory.instance_set = true;
            LogConfigTypeFactory.instance_value = new LogConfigTypeFactory();
        }
        return LogConfigTypeFactory.instance_value;
    }
        private var NO_DESCRIPTION:String = null;
        public var AUTHENTICATION:LogConfigType = null;
        public var AUTHENTICATIONERROR:LogConfigType = null;
        public var CATEGORY:LogConfigType = null;
        public var CATEGORYERROR:LogConfigType = null;
        public var CRYPT:LogConfigType = null;
        public var CRYPTERROR:LogConfigType = null;
        public var EMAILLOGGING:LogConfigType = null;
        public var EMAILLOGGINGERROR:LogConfigType = null;
        public var ENTITYFACTORYERROR:LogConfigType = null;
        public var NETBEANS_MODULE:LogConfigType = null;
        public var NETBEANS_MODULE_ERROR:LogConfigType = null;
        public var FACTORYERROR:LogConfigType = null;
        public var FILE:LogConfigType = null;
        public var FILEERROR:LogConfigType = null;
        public var HTTP:LogConfigType = null;
        public var HTTPERROR:LogConfigType = null;
        public var HTTPREQUEST:LogConfigType = null;
        public var HTTPREQUESTERROR:LogConfigType = null;
        public var IDLOGGING:LogConfigType = null;
        public var JSPEXTRAOUTPUT:LogConfigType = null;
        public var JSPTAGEXTRAOUTPUT:LogConfigType = null;
        public var JSPTAG:LogConfigType = null;
        public var JSPTAGERROR:LogConfigType = null;
        public var LICENSING:LogConfigType = null;
        public var LICENSINGERROR:LogConfigType = null;
        public var LOADER:LogConfigType = null;
        public var LOADERERROR:LogConfigType = null;
        public var OS:LogConfigType = null;
        public var OSERROR:LogConfigType = null;
        public var PAYMENT:LogConfigType = null;
        public var PAYMENTERROR:LogConfigType = null;
        public var PRELOADER:LogConfigType = null;
        public var PRELOADERERROR:LogConfigType = null;
        public var PRODUCTSEARCHLOGGING:LogConfigType = null;
        public var PRODUCTSEARCHLOGGINGERROR:LogConfigType = null;
        public var SERVLET:LogConfigType = null;
        public var SERVLETERROR:LogConfigType = null;
        public var SHIPPINGERROR:LogConfigType = null;
        public var SQLLOGGINGERROR:LogConfigType = null;
        public var SQLLOGGING:LogConfigType = null;
        public var SQLTAGS:LogConfigType = null;
        public var SQLTAGSERROR:LogConfigType = null;
        public var STYLE:LogConfigType = null;
        public var STYLEERROR:LogConfigType = null;
        public var TAGHELPER:LogConfigType = null;
        public var TAGHELPERERROR:LogConfigType = null;
        public var TAGHELPERFACTORY:LogConfigType = null;
        public var TAGHELPERFACTORYERROR:LogConfigType = null;
        public var TAX:LogConfigType = null;
        public var TAXERROR:LogConfigType = null;
        public var VALIDATION:LogConfigType = null;
        public var VALIDATIONERROR:LogConfigType = null;
        public var VIEW:LogConfigType = null;
        public var VIEWERROR:LogConfigType = null;
        public var VIEWFACTORYERROR:LogConfigType = null;
        public var WORKFLOW:LogConfigType = null;
        public var WORKFLOWERROR:LogConfigType = null;
        public var XMLLOGGING:LogConfigType = null;
        public var XMLLOGGINGERROR:LogConfigType = null;
        public var XSLLOGGING:LogConfigType = null;
        public var XSLLOGGINGERROR:LogConfigType = null;
        public var REPLACE:LogConfigType = null;
        public var REPLACE_INFO:LogConfigType = null;
        public var REPLACEERROR:LogConfigType = null;
        public var SQLLOGGINGPOOL:LogConfigType = null;
        public var SQLLOGGINGPOOLERROR:LogConfigType = null;
        public var STATICPAGEGENERATIONLOGGING:LogConfigType = null;
        public var STATICPAGEGENERATIONLOGGINGERROR:LogConfigType = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfigTypeFactory():void {
    this.NO_DESCRIPTION = "No Description";
    this.AUTHENTICATION = new LogConfigType("Authentication", this.NO_DESCRIPTION);
    this.AUTHENTICATIONERROR = new LogConfigType("Authentication Error", this.NO_DESCRIPTION);
    this.CATEGORY = new LogConfigType("Category", this.NO_DESCRIPTION);
    this.CATEGORYERROR = new LogConfigType("Category Error", this.NO_DESCRIPTION);
    this.CRYPT = new LogConfigType("Crypt", this.NO_DESCRIPTION);
    this.CRYPTERROR = new LogConfigType("Crypt Error", this.NO_DESCRIPTION);
    this.EMAILLOGGING = new LogConfigType("Email", this.NO_DESCRIPTION);
    this.EMAILLOGGINGERROR = new LogConfigType("Email Error", this.NO_DESCRIPTION);
    this.ENTITYFACTORYERROR = new LogConfigType("Entity Factory Error", this.NO_DESCRIPTION);
    this.NETBEANS_MODULE = new LogConfigType("NetBeans Module", this.NO_DESCRIPTION);
    this.NETBEANS_MODULE_ERROR = new LogConfigType("NetBeans Module Error", this.NO_DESCRIPTION);
    this.FACTORYERROR = new LogConfigType("General Factory Error", this.NO_DESCRIPTION);
    this.FILE = new LogConfigType("File", this.NO_DESCRIPTION);
    this.FILEERROR = new LogConfigType("File Error", this.NO_DESCRIPTION);
    this.HTTP = new LogConfigType("HTTP", this.NO_DESCRIPTION);
    this.HTTPERROR = new LogConfigType("HTTP Error", this.NO_DESCRIPTION);
    this.HTTPREQUEST = new LogConfigType("Http Request", this.NO_DESCRIPTION);
    this.HTTPREQUESTERROR = new LogConfigType("Http Request Error", this.NO_DESCRIPTION);
    this.IDLOGGING = new LogConfigType("ID Logging", this.NO_DESCRIPTION);
    this.JSPEXTRAOUTPUT = new LogConfigType("JSP Extra Output", this.NO_DESCRIPTION);
    this.JSPTAGEXTRAOUTPUT = new LogConfigType("JSP Tag Extra Output", this.NO_DESCRIPTION);
    this.JSPTAG = new LogConfigType("JSP Tag", this.NO_DESCRIPTION);
    this.JSPTAGERROR = new LogConfigType("JSP Tag Error", this.NO_DESCRIPTION);
    this.LICENSING = new LogConfigType("Licensing", this.NO_DESCRIPTION);
    this.LICENSINGERROR = new LogConfigType("Licensing Error", this.NO_DESCRIPTION);
    this.LOADER = new LogConfigType("Loader", this.NO_DESCRIPTION);
    this.LOADERERROR = new LogConfigType("Loader Error", this.NO_DESCRIPTION);
    this.OS = new LogConfigType("OS", this.NO_DESCRIPTION);
    this.OSERROR = new LogConfigType("OS Error", this.NO_DESCRIPTION);
    this.PAYMENT = new LogConfigType("Payment", this.NO_DESCRIPTION);
    this.PAYMENTERROR = new LogConfigType("Payment Error", this.NO_DESCRIPTION);
    this.PRELOADER = new LogConfigType("PreLoader", this.NO_DESCRIPTION);
    this.PRELOADERERROR = new LogConfigType("PreLoader Error", this.NO_DESCRIPTION);
    this.PRODUCTSEARCHLOGGING = new LogConfigType("Product Search Logging", this.NO_DESCRIPTION);
    this.PRODUCTSEARCHLOGGINGERROR = new LogConfigType("Product Search Logging Error", this.NO_DESCRIPTION);
    this.SERVLET = new LogConfigType("Servlet", this.NO_DESCRIPTION);
    this.SERVLETERROR = new LogConfigType("Servlet Error", this.NO_DESCRIPTION);
    this.SHIPPINGERROR = new LogConfigType("Shipping Error", this.NO_DESCRIPTION);
    this.SQLLOGGINGERROR = new LogConfigType("SQL Error", this.NO_DESCRIPTION);
    this.SQLLOGGING = new LogConfigType("SQL Logging", this.NO_DESCRIPTION);
    this.SQLTAGS = new LogConfigType("SQL Tag Logging", this.NO_DESCRIPTION);
    this.SQLTAGSERROR = new LogConfigType("SQL Tag Error", this.NO_DESCRIPTION);
    this.STYLE = new LogConfigType("Style", this.NO_DESCRIPTION);
    this.STYLEERROR = new LogConfigType("Style Error", this.NO_DESCRIPTION);
    this.TAGHELPER = new LogConfigType("Tag Helper", this.NO_DESCRIPTION);
    this.TAGHELPERERROR = new LogConfigType("Tag Helper Error", this.NO_DESCRIPTION);
    this.TAGHELPERFACTORY = new LogConfigType("Tag Helper Factory", this.NO_DESCRIPTION);
    this.TAGHELPERFACTORYERROR = new LogConfigType("Tag Helper Factory Error", this.NO_DESCRIPTION);
    this.TAX = new LogConfigType("Tax", this.NO_DESCRIPTION);
    this.TAXERROR = new LogConfigType("Tax Error", this.NO_DESCRIPTION);
    this.VALIDATION = new LogConfigType("Validation", this.NO_DESCRIPTION);
    this.VALIDATIONERROR = new LogConfigType("Validation Error", this.NO_DESCRIPTION);
    this.VIEW = new LogConfigType("View", this.NO_DESCRIPTION);
    this.VIEWERROR = new LogConfigType("View Error", this.NO_DESCRIPTION);
    this.VIEWFACTORYERROR = new LogConfigType("View Factory Error", this.NO_DESCRIPTION);
    this.WORKFLOW = new LogConfigType("Workflow", this.NO_DESCRIPTION);
    this.WORKFLOWERROR = new LogConfigType("Workflow Error", this.NO_DESCRIPTION);
    this.XMLLOGGING = new LogConfigType("XML Logging", this.NO_DESCRIPTION);
    this.XMLLOGGINGERROR = new LogConfigType("XML Logging Error", this.NO_DESCRIPTION);
    this.XSLLOGGING = new LogConfigType("XSL Logging", this.NO_DESCRIPTION);
    this.XSLLOGGINGERROR = new LogConfigType("XSL Logging Error", this.NO_DESCRIPTION);
    this.REPLACE = new LogConfigType("Replace", this.NO_DESCRIPTION);
    this.REPLACE_INFO = new LogConfigType("Replace Info", this.NO_DESCRIPTION);
    this.REPLACEERROR = new LogConfigType("Replace Error", this.NO_DESCRIPTION);
    this.SQLLOGGINGPOOL = new LogConfigType("SQL Pool", this.NO_DESCRIPTION);
    this.SQLLOGGINGPOOLERROR = new LogConfigType("SQL Pool Error", this.NO_DESCRIPTION);
    this.STATICPAGEGENERATIONLOGGING = new LogConfigType("Static Page Generation Logging", this.NO_DESCRIPTION);
    this.STATICPAGEGENERATIONLOGGINGERROR = new LogConfigType("Static Page Generation Logging Error", this.NO_DESCRIPTION);
        }
    

    public static function getInstance():LogConfigTypeFactory {
        return LogConfigTypeFactory.instance;
    }
    

    public function LogConfigTypeFactory() {
        super();
        this.initFieldsLogConfigTypeFactory();
        PreLogUtil.put("FreeBlisket", this, CommonStrings.getInstance().CONSTRUCTOR);
    }
    }
}

