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
    import org.allbinary.string.CommonStrings;

    public class NativeLibraryHelperWrapper {
        private var libraryName:String = null;
        private var loader:ClassLoader = null;
        private var anyType:Object = null;

        // Java field initializers run after the base constructor
        private function initFieldsNativeLibraryHelperWrapper():void {
    this.libraryName = null;
    this.loader = null;
    this.anyType = null;
        }
    

    public function NativeLibraryHelperWrapper(libraryName:String) {
        super();
        this.initFieldsNativeLibraryHelperWrapper();
        this.setLibraryName(libraryName);
    }
    

    public function load():void {
        var params:Vector.<Object> = new Vector.<Object>(1);
        params[0] = this.getLibraryName();
        var classes:Vector.<String> = new Vector.<String>(1);
        classes[0] = JSystem.className(this.getLibraryName());
        this.loader = new NativeLibraryClassLoader(JSystem.className(this).getClassLoader());
        var myClass:String = this.loader.loadClass("dynamic.NativeLibraryHelper");
        var constructor:Constructor = myClass.getConstructor(classes);
        this.anyType = constructor.newInstance(params);
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var method:Method = JSystem.className(this.anyType).getMethod(commonStrings.LOAD, null);
        method.invoke(this.anyType, null);
    }
    

    public function unload():void {
        this.anyType = null;
        this.loader = null;
        JSystem.gc();
        JSystem.gc();
    }
    

    public function toString():String {
        return "Library: " + JString.ofObject(this.getLibraryName());
    }
    

    public function getLibraryName():String {
        return this.libraryName;
    }
    

    public function setLibraryName(libraryName:String):void {
        this.libraryName = libraryName;
    }
    }
}

