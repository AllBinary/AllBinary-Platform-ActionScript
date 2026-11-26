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
    import java.lang.JClassLoader;

    public class NativeLibraryClassLoader extends JClassLoader {
        private var message:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsNativeLibraryClassLoader():void {
    this.message = "This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries";
        }
    

    public function NativeLibraryClassLoader(parent:JClassLoader) {
        super(parent);
        this.initFieldsNativeLibraryClassLoader();
    }
    }
}

