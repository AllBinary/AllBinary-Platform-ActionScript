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
package org.allbinary.business.user.commerce.inventory.item {

    public class BasicItemData {
    private static var instance_value:BasicItemData;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicItemData {
        if (!BasicItemData.instance_set) {
            BasicItemData.instance_set = true;
            BasicItemData.instance_value = new BasicItemData();
        }
        return BasicItemData.instance_value;
    }
        public var ITEM:String = null;
        public var TOTAL:String = null;
        public var ID:String = null;
        public var NUMBER:String = null;
        public var INBASKETS:String = null;
        public var WEIGHT:String = null;
        public var NEWORUSED:String = null;
        public var SUMMARY:String = null;
        public var DISTRIBUTOR:String = null;
        public var IDUSEDBYDISTRIBUTOR:String = null;
        public var PRODUCEDBY:String = null;
        public var PRODUCTIONDATE:String = null;
        public var STARTPRODUCTIONDATE:String = null;
        public var DESCRIPTION:String = null;
        public var KEYWORDS:String = null;
        public var CATEGORY:String = null;
        public var TYPE:String = null;
        public var IMAGE:String = null;
        public var SMALLIMAGE:String = null;
        public var MEDIUMIMAGE:String = null;
        public var LARGEIMAGE:String = null;
        public var PRICE:String = null;
        public var COMMENT:String = null;
        public var CUSTOMS:String = null;
        public var DOWNLOADS:String = null;
        public var GROUPS:String = null;
        public var OPTIONS:String = null;
        public var PERMISSIONS:String = null;
        public var SPECIALS:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicItemData():void {
    this.ITEM = "BASICITEM";
    this.TOTAL = "BASICITEM_TOTAL";
    this.ID = "BASICITEM_ID";
    this.NUMBER = "BASICITEM_NUMBER";
    this.INBASKETS = "BASICITEM_IN_BASKETS";
    this.WEIGHT = "BASICITEM_WEIGHT";
    this.NEWORUSED = "BASICITEM_NEW_OR_USED";
    this.SUMMARY = "BASICITEM_SUMMARY";
    this.DISTRIBUTOR = "BASICITEM_DISTRIBUTOR";
    this.IDUSEDBYDISTRIBUTOR = "BASICITEM_IDUSEDBYDISTRIBUTOR";
    this.PRODUCEDBY = "BASICITEM_PRODUCEDBY";
    this.PRODUCTIONDATE = "BASICITEM_PRODUCTIONDATE";
    this.STARTPRODUCTIONDATE = "BASICITEM_STARTPRODUCTIONDATE";
    this.DESCRIPTION = "BASICITEM_DESCRIPTION";
    this.KEYWORDS = "BASICITEM_KEYWORDS";
    this.CATEGORY = "BASICITEM_CATEGORY";
    this.TYPE = "BASICITEM_TYPE";
    this.IMAGE = "BASICITEM_IMG";
    this.SMALLIMAGE = "BASICITEM_SMALL_IMG";
    this.MEDIUMIMAGE = "BASICITEM_MEDIUM_IMG";
    this.LARGEIMAGE = "BASICITEM_LARGE_IMG";
    this.PRICE = "BASICITEM_PRICE";
    this.COMMENT = "BASICITEM_COMMENT";
    this.CUSTOMS = "BASICITEM_CUSTOMS";
    this.DOWNLOADS = "BASICITEM_DOWNLOADS";
    this.GROUPS = "BASICITEM_GROUPS";
    this.OPTIONS = "BASICITEM_OPTIONS";
    this.PERMISSIONS = "BASICITEM_PERMISSIONS";
    this.SPECIALS = "BASICITEM_SPECIALS";
        }

        public function BasicItemData() {
            super();
            this.initFieldsBasicItemData();
        }
    

    public static function getInstance():BasicItemData {
        return BasicItemData.instance;
    }
    }
}

