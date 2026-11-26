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
package org.allbinary.debug {

    public class NoDebug implements DebugInterface {
    private static var SINGLETON_value:DebugInterface;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():DebugInterface {
        if (!NoDebug.SINGLETON_set) {
            NoDebug.SINGLETON_set = true;
            NoDebug.SINGLETON_value = new NoDebug();
        }
        return NoDebug.SINGLETON_value;
    }
    private static function set SINGLETON(value:DebugInterface):void {
        NoDebug.SINGLETON_set = true;
        NoDebug.SINGLETON_value = value;
    }
    

    public static function getInstance():DebugInterface {
        return NoDebug.SINGLETON;
    }
    

    public function start():void {
    }
    

    public function stop():void {
    }
    

    public function getMaxTime():Number {
        return 10000;
    }
    

    public function getStartTime():Number {
        return 0;
    }
    

    public function isRunning():Boolean {
        return false;
    }
    }
}

