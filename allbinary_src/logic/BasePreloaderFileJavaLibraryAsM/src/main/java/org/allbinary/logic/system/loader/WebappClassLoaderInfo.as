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
package org.allbinary.logic.system.loader {
    import org.allbinary.logic.NullUtil;
    import java.lang.JClassLoader;

    public class WebappClassLoaderInfo {
    private static var classLoader_value:Object;
    private static var classLoader_set:Boolean = false;
    private static function get classLoader():Object {
        if (!WebappClassLoaderInfo.classLoader_set) {
            WebappClassLoaderInfo.classLoader_set = true;
            WebappClassLoaderInfo.classLoader_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return WebappClassLoaderInfo.classLoader_value;
    }
    private static function set classLoader(value:Object):void {
        WebappClassLoaderInfo.classLoader_set = true;
        WebappClassLoaderInfo.classLoader_value = value;
    }
    

    public function WebappClassLoaderInfo() {
        super();
    }
    

    public static function setLoader(classLoader:JClassLoader):void {
        WebappClassLoaderInfo.classLoader = classLoader;
    }
    

    public static function getLoader():JClassLoader {
        return (WebappClassLoaderInfo.classLoader as JClassLoader);
    }
    }
}

