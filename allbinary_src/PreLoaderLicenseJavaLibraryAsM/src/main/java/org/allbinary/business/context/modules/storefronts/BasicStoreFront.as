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
package org.allbinary.business.context.modules.storefronts {
    import java.util.JHashMap;
    import org.allbinary.business.context.modules.storefront.StoreFrontData;
    import org.allbinary.business.entry.EntryData;
    import org.allbinary.business.user.UserData;
    import org.allbinary.logic.string.tokens.Tokenizer;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class BasicStoreFront implements BasicStoreFrontInterface {
        private var name:String = null;
        private var userName:String = null;
        private var basketName:String = null;
        private var homeHostName:String = null;
        private var homeHostNamePath:String = null;
        private var hostName:String = null;
        private var hostNamePath:String = null;
        private var testHomeHostName:String = null;
        private var testHomeHostNamePath:String = null;
        private var testHostName:String = null;
        private var testHostNamePath:String = null;
        private var imagePath:String = null;
        private var staticPath:String = null;
        private var categoryPath:String = null;
        private var inventoryControl:String = null;
        private var subStores:String = null;
        private var tagLocation:String = null;
        private var packageLocation:String = null;
        private var ftp:String = null;
        private var ftpPath:String = null;
        private var ftpUserName:String = null;
        private var ftpPassword:String = null;
        private var testFtp:String = null;
        private var testFtpPath:String = null;
        private var testFtpUserName:String = null;
        private var testFtpPassword:String = null;
        private var timeCreated:String = null;
        private var lastModified:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicStoreFront():void {
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        }
    

    public function BasicStoreFront(...args) {
        super();
        this.initFieldsBasicStoreFront();
        this.jconstruct(args);
    }

    private function jconstruct(args:Array):void {
        if (args.length == 0) {
            (function():void {
            }).apply(this, args);
            return;
        }
        if (args.length == 1) {
            (function(storeHashMap:JHashMap):void {
        var storeFrontData:StoreFrontData = StoreFrontData.getInstance();
        this.name = (storeHashMap.get_(storeFrontData.NAME) as String);
        this.userName = (storeHashMap.get_(UserData.USERNAME) as String);
        this.basketName = (storeHashMap.get_(storeFrontData.NAME) as String);
        this.homeHostName = (storeHashMap.get_(storeFrontData.HOMEHOSTNAME) as String);
        this.homeHostNamePath = (storeHashMap.get_(storeFrontData.HOMEHOSTNAMEPATH) as String);
        this.hostName = (storeHashMap.get_(storeFrontData.HOSTNAME) as String);
        this.hostNamePath = (storeHashMap.get_(storeFrontData.HOSTNAMEPATH) as String);
        this.testHomeHostName = (storeHashMap.get_(storeFrontData.TESTHOMEHOSTNAME) as String);
        this.testHomeHostNamePath = (storeHashMap.get_(storeFrontData.TESTHOMEHOSTNAMEPATH) as String);
        this.testHostName = (storeHashMap.get_(storeFrontData.TESTHOSTNAME) as String);
        this.testHostNamePath = (storeHashMap.get_(storeFrontData.TESTHOSTNAMEPATH) as String);
        this.imagePath = (storeHashMap.get_(storeFrontData.IMAGEPATH) as String);
        this.staticPath = (storeHashMap.get_(storeFrontData.STATICPATH) as String);
        this.categoryPath = (storeHashMap.get_(storeFrontData.CATEGORYPATH) as String);
        this.inventoryControl = (storeHashMap.get_(storeFrontData.INVENTORYCONTROL) as String);
        this.subStores = (storeHashMap.get_(storeFrontData.SUBSTORES) as String);
        this.tagLocation = (storeHashMap.get_(storeFrontData.TAGLOCATION) as String);
        this.packageLocation = (storeHashMap.get_(storeFrontData.PACKAGELOCATION) as String);
        this.ftp = (storeHashMap.get_(storeFrontData.FTP) as String);
        this.ftpPath = (storeHashMap.get_(storeFrontData.FTPPATH) as String);
        this.ftpUserName = (storeHashMap.get_(storeFrontData.FTPUSERNAME) as String);
        this.ftpPassword = (storeHashMap.get_(storeFrontData.FTPPASSWORD) as String);
        this.testFtp = (storeHashMap.get_(storeFrontData.TESTFTP) as String);
        this.testFtpPath = (storeHashMap.get_(storeFrontData.TESTFTPPATH) as String);
        this.testFtpUserName = (storeHashMap.get_(storeFrontData.TESTFTPUSERNAME) as String);
        this.testFtpPassword = (storeHashMap.get_(storeFrontData.TESTFTPPASSWORD) as String);
        this.timeCreated = (storeHashMap.get_(EntryData.getInstance().TIMECREATED) as String);
        this.lastModified = (storeHashMap.get_(EntryData.getInstance().LASTMODIFIED) as String);
            }).apply(this, args);
            return;
        }
    }
    
    

    public function getTestHtmlPath():String {
        return org.allbinary.globals.URLGLOBALS.getTestHtmlPath() + this.getCurrentHostNamePath();
    }
    

    public function getCurrentHostName():String {
        var location:String = null;
        if (org.allbinary.globals.URLGLOBALS.isTestingMode()) {
            location = this.getTestHostName();
        } else {
            location = this.getHostName();
        }
        return location;
    }
    

    public function getCurrentHostNamePath():String {
        var location:String = null;
        if (org.allbinary.globals.URLGLOBALS.isTestingMode()) {
            location = this.getTestHostNamePath();
        } else {
            location = this.getHostNamePath();
        }
        return location;
    }
    

    public function getCurrentHomeHostName():String {
        var location:String = null;
        if (org.allbinary.globals.URLGLOBALS.isTestingMode()) {
            location = this.getTestHomeHostName();
        } else {
            location = this.getHomeHostName();
        }
        return location;
    }
    

    public function getCurrentHomeHostNamePath():String {
        var location:String = null;
        if (org.allbinary.globals.URLGLOBALS.isTestingMode()) {
            location = this.getTestHomeHostNamePath();
        } else {
            location = this.getHomeHostNamePath();
        }
        return location;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getUserName():String {
        return this.userName;
    }
    

    public function getBasketName():String {
        return this.basketName;
    }
    

    public function getHomeHostName():String {
        return this.homeHostName;
    }
    

    public function getHomeHostNamePath():String {
        return this.homeHostNamePath;
    }
    

    public function getHostName():String {
        return this.hostName;
    }
    

    public function getHostNamePath():String {
        return this.hostNamePath;
    }
    

    public function getTestHomeHostName():String {
        return this.testHomeHostName;
    }
    

    public function getTestHomeHostNamePath():String {
        return this.testHomeHostNamePath;
    }
    

    public function getTestHostName():String {
        return this.testHostName;
    }
    

    public function getTestHostNamePath():String {
        return this.testHostNamePath;
    }
    

    public function getStaticPath():String {
        return this.staticPath;
    }
    

    public function getCategoryPath():String {
        return this.categoryPath;
    }
    

    public function getInventoryControl():String {
        return this.inventoryControl;
    }
    

    public function getSubStores():BasicArrayList {
        try {
            var tokenizer:Tokenizer = new Tokenizer(CommonSeps.getInstance().SEMICOLON);
            var subStoreVector:BasicArrayList = tokenizer.getTokensFromString(this.subStores, new BasicArrayListD());
            return subStoreVector;
        } catch (e:*) {
            throw e;
        }
    }
    

    public function getTagLocation():String {
        return this.tagLocation;
    }
    

    public function getPackageLocation():String {
        return this.packageLocation;
    }
    

    public function getFtp():String {
        return this.ftp;
    }
    

    public function getFtpUserName():String {
        return this.ftpUserName;
    }
    

    public function getFtpPassword():String {
        return this.ftpPassword;
    }
    

    public function getTestFtp():String {
        return this.testFtp;
    }
    

    public function getTestFtpUserName():String {
        return this.testFtpUserName;
    }
    

    public function getTestFtpPassword():String {
        return this.testFtpPassword;
    }
    

    public function getFtpPath():String {
        return this.ftpPath;
    }
    

    public function getTestFtpPath():String {
        return this.testFtpPath;
    }
    

    public function getTimeCreated():String {
        return this.timeCreated;
    }
    

    public function getLastModified():String {
        return this.lastModified;
    }
    }
}

