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
package org.allbinary.globals {
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.StringMaker;

    public class FREEBLISKET_PATH_GLOBALS {
    private static var instance_value:FREEBLISKET_PATH_GLOBALS;
    private static var instance_set:Boolean = false;
    private static function get instance():FREEBLISKET_PATH_GLOBALS {
        if (!FREEBLISKET_PATH_GLOBALS.instance_set) {
            FREEBLISKET_PATH_GLOBALS.instance_set = true;
            FREEBLISKET_PATH_GLOBALS.instance_value = new FREEBLISKET_PATH_GLOBALS();
        }
        return FREEBLISKET_PATH_GLOBALS.instance_value;
    }
        public var INSTALLPATH:String = null;
        public var XSLPATH:String = null;
        public var TEMPLATEPATH:String = null;
        public var STYLEPATH:String = null;
        public var THEMEPATH:String = null;
        public var DBINITPATH:String = null;
        public var LINEDATAPATH:String = null;
        public var CONFIGURATIONPATH:String = null;
        public var USERCONFIGURATIONPATH:String = null;
        public var CONTEXTCONFIGURATIONPATH:String = null;
        public var LICENSEERRORPAGE:String = null;
        public var ERRORPAGE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFREEBLISKET_PATH_GLOBALS():void {
    
    
    this.TEMPLATEPATH = "template" + AbPathData.getInstance().SEPARATOR;
    this.STYLEPATH = this.TEMPLATEPATH + "style" + AbPathData.getInstance().SEPARATOR;
    this.THEMEPATH = this.STYLEPATH + "theme" + AbPathData.getInstance().SEPARATOR;
    this.DBINITPATH = .PATH_GLOBALS.getInstance().INIT_PATH + "db" + AbPathData.getInstance().SEPARATOR;
    this.LINEDATAPATH = .PATH_GLOBALS.getInstance().INIT_PATH + "lineData" + AbPathData.getInstance().SEPARATOR;
    
    
    
    this.LICENSEERRORPAGE = "LicensingError.jsp";
    this.ERRORPAGE = "Error.jsp";
        }
    

    public static function getInstance():FREEBLISKET_PATH_GLOBALS {
        return FREEBLISKET_PATH_GLOBALS.instance;
    }
    

    public function FREEBLISKET_PATH_GLOBALS() {
        super();
        this.initFieldsFREEBLISKET_PATH_GLOBALS();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("install");
        stringBuffer.append(AbPathData.getInstance().SEPARATOR);
        this.INSTALLPATH = stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(.PATH_GLOBALS.getInstance().INIT_PATH);
        stringBuffer.append("views");
        stringBuffer.append(AbPathData.getInstance().SEPARATOR);
        this.XSLPATH = stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(this.XSLPATH);
        stringBuffer.append("configuration");
        stringBuffer.append(AbPathData.getInstance().SEPARATOR);
        this.CONFIGURATIONPATH = stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(this.CONFIGURATIONPATH);
        stringBuffer.append("user");
        stringBuffer.append(AbPathData.getInstance().SEPARATOR);
        this.USERCONFIGURATIONPATH = stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(this.CONFIGURATIONPATH);
        stringBuffer.append("context");
        stringBuffer.append(AbPathData.getInstance().SEPARATOR);
        this.CONTEXTCONFIGURATIONPATH = stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
    }
    }
}

