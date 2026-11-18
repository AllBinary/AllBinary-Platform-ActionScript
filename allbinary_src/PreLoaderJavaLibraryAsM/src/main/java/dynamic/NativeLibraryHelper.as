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
package dynamic {

    public class NativeLibraryHelper {
        private var library:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsNativeLibraryHelper():void {
    
        }
    

    public function NativeLibraryHelper(library:String) {
        super();
        this.initFieldsNativeLibraryHelper();
        this.library = library;
    }
    

    public function load():void {
        JSystem.loadLibrary(this.library);
    }
    }
}

