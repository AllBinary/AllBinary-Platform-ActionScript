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
package org.allbinary.business.context.modules.storefront {

    public class StoreFrontData {
    private static var instance_value:StoreFrontData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontData {
        if (!StoreFrontData.instance_set) {
            StoreFrontData.instance_set = true;
            StoreFrontData.instance_value = new StoreFrontData();
        }
        return StoreFrontData.instance_value;
    }
        public var CANCEL:String = null;
        public var SELECT:String = null;
        public var INSTALL:String = null;
        public var INSTALL_COMPLETE:String = null;
        public var NAME:String = null;
        public var CURRENTHOSTNAME:String = null;
        public var CURRENTHOSTNAMEPATH:String = null;
        public var CURRENTHOMEHOSTNAME:String = null;
        public var CURRENTHOMEHOSTNAMEPATH:String = null;
        public var HOMEHOSTNAME:String = null;
        public var HOMEHOSTNAMEPATH:String = null;
        public var HOSTNAME:String = null;
        public var HOSTNAMEPATH:String = null;
        public var TESTHOMEHOSTNAME:String = null;
        public var TESTHOMEHOSTNAMEPATH:String = null;
        public var TESTHOSTNAME:String = null;
        public var TESTHOSTNAMEPATH:String = null;
        public var IMAGEPATH:String = null;
        public var STATICPATH:String = null;
        public var CATEGORYPATH:String = null;
        public var INVENTORYCONTROL:String = null;
        public var CONFIGURATION:String = null;
        public var SUBSTORES:String = null;
        public var TAGLOCATION:String = null;
        public var PACKAGELOCATION:String = null;
        public var FTP:String = null;
        public var FTPPATH:String = null;
        public var FTPUSERNAME:String = null;
        public var FTPPASSWORD:String = null;
        public var TESTFTP:String = null;
        public var TESTFTPPATH:String = null;
        public var TESTFTPUSERNAME:String = null;
        public var TESTFTPPASSWORD:String = null;
        public var SELECTSTORENAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontData():void {
    this.CANCEL = "Cancel Store Front";
    this.SELECT = "Select Store Front";
    this.INSTALL = "Install Store Front";
    this.INSTALL_COMPLETE = "Install Store Front Complete";
    this.NAME = "STOREFRONT_NAME";
    this.CURRENTHOSTNAME = "STOREFRONT_CURRENTHOSTNAME";
    this.CURRENTHOSTNAMEPATH = "STOREFRONT_CURRENTHOSTNAMEPATH";
    this.CURRENTHOMEHOSTNAME = "STOREFRONT_CURRENTHOMEHOSTNAME";
    this.CURRENTHOMEHOSTNAMEPATH = "STOREFRONT_CURRENTHOMEHOSTNAMEPATH";
    this.HOMEHOSTNAME = "STOREFRONT_HOMEHOSTNAME";
    this.HOMEHOSTNAMEPATH = "STOREFRONT_HOMEHOSTNAMEPATH";
    this.HOSTNAME = "STOREFRONT_HOSTNAME";
    this.HOSTNAMEPATH = "STOREFRONT_HOSTNAMEPATH";
    this.TESTHOMEHOSTNAME = "STOREFRONT_TESTHOMEHOSTNAME";
    this.TESTHOMEHOSTNAMEPATH = "STOREFRONT_TESTHOMEHOSTNAMEPATH";
    this.TESTHOSTNAME = "STOREFRONT_TESTHOSTNAME";
    this.TESTHOSTNAMEPATH = "STOREFRONT_TESTHOSTNAMEPATH";
    this.IMAGEPATH = "STOREFRONT_IMAGEPATH";
    this.STATICPATH = "STOREFRONT_STATICPATH";
    this.CATEGORYPATH = "STOREFRONT_CATEGORYPATH";
    this.INVENTORYCONTROL = "STOREFRONT_INVENTORYCONTROL";
    this.CONFIGURATION = "STOREFRONT_CONFIGURATION";
    this.SUBSTORES = "STOREFRONT_SUBSTORES";
    this.TAGLOCATION = "STOREFRONT_TAGLOCATION";
    this.PACKAGELOCATION = "STOREFRONT_PACKAGELOCATION";
    this.FTP = "STOREFRONT_FTP";
    this.FTPPATH = "STOREFRONT_FTPPATH";
    this.FTPUSERNAME = "STOREFRONT_FTPUSERNAME";
    this.FTPPASSWORD = "STOREFRONT_FTPPASSWORD";
    this.TESTFTP = "STOREFRONT_TESTFTP";
    this.TESTFTPPATH = "STOREFRONT_TESTFTPPATH";
    this.TESTFTPUSERNAME = "STOREFRONT_TESTFTPUSERNAME";
    this.TESTFTPPASSWORD = "STOREFRONT_TESTFTPPASSWORD";
    this.SELECTSTORENAME = "STOREFRONT_SELECTSTORENAME";
        }

        public function StoreFrontData() {
            super();
            this.initFieldsStoreFrontData();
        }
    

    public static function getInstance():StoreFrontData {
        return StoreFrontData.instance;
    }
    }
}

