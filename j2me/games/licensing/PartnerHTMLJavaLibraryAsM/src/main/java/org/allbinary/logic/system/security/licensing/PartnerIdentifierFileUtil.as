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
package org.allbinary.logic.system.security.licensing {
    import org.allbinary.data.resource.ResourceUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class PartnerIdentifierFileUtil {
    private static var instance_value:PartnerIdentifierFileUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():PartnerIdentifierFileUtil {
        if (!PartnerIdentifierFileUtil.instance_set) {
            PartnerIdentifierFileUtil.instance_set = true;
            PartnerIdentifierFileUtil.instance_value = new PartnerIdentifierFileUtil();
        }
        return PartnerIdentifierFileUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var FILE_NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPartnerIdentifierFileUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.FILE_NAME = "partner.txt";
        }

        public function PartnerIdentifierFileUtil() {
            super();
            this.initFieldsPartnerIdentifierFileUtil();
        }
    

    public static function getInstance():PartnerIdentifierFileUtil {
        return PartnerIdentifierFileUtil.instance;
    }
    

    public function get_():String {
        try {
            var resourceUtil:ResourceUtil = ResourceUtil.getInstance();
            var partnerString:String = StringUtil.getInstance().EMPTY_STRING;
            return partnerString;
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET, e);
            return StringUtil.getInstance().NULL_STRING;
        }
    }
    }
}

