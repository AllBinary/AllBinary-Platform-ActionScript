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
package org.allbinary.business.init {
    import org.allbinary.logic.io.path.AbPath;

    public interface InitInfoInterface {
    

    function isTesting():Boolean;
    

    function getTesting():String;
    

    function getTestHtmlPath():String;
    

    function getMainPath():String;
    

    function setTesting(value:String):void;
    

    function setTestHtmlPath(value:AbPath):void;
    

    function setMainPath(value:AbPath):void;
    

    function isTestingValid(testing:String):Boolean;
    

    function isTestHtmlPathValid(value:AbPath):Boolean;
    

    function isMainPathValid(value:AbPath):Boolean;
    }
}

