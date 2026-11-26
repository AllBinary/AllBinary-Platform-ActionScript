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
package org.allbinary.logic.io.file {
    import java.io.JFilenameFilter;
    import java.io.JIOException;
    import java.net.JURI;

    public interface AbFileInterface {
    

    function canRead():Boolean;
    

    function canWrite():Boolean;
    

    function createNewFile():Boolean;
    

    function delete_():Boolean;
    

    function deleteOnExit():void;
    

    function exists():Boolean;
    

    function getAbsolutePath():String;
    

    function getCanonicalPath():String;
    

    function getParent():String;
    

    function getPath():String;
    

    function isAbsolute():Boolean;
    

    function isDirectory():Boolean;
    

    function isFile():Boolean;
    

    function isHidden():Boolean;
    

    function lastModified():Number;
    

    function length():Number;
    

    function list():Vector.<String>;
    

    function listWithFilter(filter:JFilenameFilter):Vector.<String>;
    

    function mkdir():Boolean;
    

    function mkdirs():Boolean;
    

    function setLastModified(time:Number):Boolean;
    

    function setReadOnly():Boolean;
    
    

    function toURI():JURI;
    }
}

