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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.logic.system.loader.WebappClassLoaderInfo;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;

    public class Globals {
    private static var instance_value:Globals;
    private static var instance_set:Boolean = false;
    private static function get instance():Globals {
        if (!Globals.instance_set) {
            Globals.instance_set = true;
            Globals.instance_value = new Globals();
        }
        return Globals.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsGlobals():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():Globals {
        return Globals.instance;
    }
    

    public function Globals() {
        super();
        this.initFieldsGlobals();
    }
    

    public function init(classLoader:ClassLoader, pathString:String):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var appUrlGlobals:AppUrlGlobals = new AppUrlGlobals();
        appUrlGlobals.setWebappPath(pathString);
        .URLGLOBALS.init(appUrlGlobals);
        WebappClassLoaderInfo.setLoader(classLoader);
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ");
        stringBuffer.append(pathString);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append(JSystem.className(classLoader));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(pathString)) {
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append("No Path Provided. Using Process Path: ");
            stringBuffer.append(pathString);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(CommonSeps.getInstance().EQUALS);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(.URLGLOBALS.getWebappPath());
            this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        }
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append("Webapp Path Set To: ");
        stringBuffer.append(.URLGLOBALS.getWebappPath());
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
    }
    }
}

