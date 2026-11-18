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
    import org.allbinary.business.init.InitInfo;
    import org.allbinary.logic.string.StringValidationUtil;

    public class WebAppUrlGlobals extends UrlGlobalsInterface {
        private var path:String = null;
        private var isWebappPathSet:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsWebAppUrlGlobals():void {
    this.path = null;
    this.isWebappPathSet = false;
        }

        public function WebAppUrlGlobals() {
            super();
            this.initFieldsWebAppUrlGlobals();
        }
    

    override public function isTestingMode():Boolean {
        return InitInfo.getInstance().isTesting();
    }
    

    override public function getWebappPath():String {
        return this.path;
    }
    

    public function setWebappPath(path:String):void {
        path = path;
        this.isWebappPathSet = true;
    }
    

    override public function getTestHtmlPath():String {
        return InitInfo.getInstance().getTestHtmlPath();
    }
    

    override public function getMainPath():String {
        var mainPath:String = InitInfo.getInstance().getMainPath();
        if (!StringValidationUtil.getInstance().isEmpty(mainPath)) {
            return mainPath;
        } else if (this.isWebappPathSet) {
            return this.getWebappPath();
        } else {
            throw new JException("Exception", "Webapp Path is not set");
        }
    }
    }
}

