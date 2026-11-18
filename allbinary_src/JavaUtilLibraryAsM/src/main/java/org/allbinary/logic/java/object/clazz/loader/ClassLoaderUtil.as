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
package org.allbinary.logic.java.anyType.clazz.loader {

    public class ClassLoaderUtil {
    

    public function ClassLoaderUtil() {
        super();
    }
    

    public static function getName(anyType:Object):String {
        var classLoader:ClassLoader = JSystem.className(anyType).getClassLoader();
        if (classLoader != null) {
            return "ClassLoader: " + JSystem.className(classLoader);
        }
        throw new JException("Exception", "Unable to get ClassLoader");
    }
    }
}

