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
    import org.allbinary.logic.string.StringUtil;

    //implements
    public class AppUrlGlobals extends UrlGlobalsInterface {
    private static var NULL_APP_URL_GLOBALS_value:AppUrlGlobals;
    private static var NULL_APP_URL_GLOBALS_set:Boolean = false;
    public static function get NULL_APP_URL_GLOBALS():AppUrlGlobals {
        if (!AppUrlGlobals.NULL_APP_URL_GLOBALS_set) {
            AppUrlGlobals.NULL_APP_URL_GLOBALS_set = true;
            AppUrlGlobals.NULL_APP_URL_GLOBALS_value = new AppUrlGlobals();
        }
        return AppUrlGlobals.NULL_APP_URL_GLOBALS_value;
    }
        private var path:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAppUrlGlobals():void {
    this.path = StringUtil.getInstance().EMPTY_STRING;
        }

        public function AppUrlGlobals() {
            super();
            this.initFieldsAppUrlGlobals();
        }
    

    override public function isTestingMode():Boolean {
        return false;
    }
    

    override public function getWebappPath():String {
        return this.path;
    }
    

    public function setWebappPath(path:String):void {
        this.path = path;
        if (!(JString.endsWith(this.path, "\\") || JString.endsWith(this.path, "/"))) {
            this.path = this.path + "\\";
        }
    }
    

    override public function getTestHtmlPath():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    override public function getMainPath():String {
        return this.path;
    }
    }
}

