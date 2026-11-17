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
package org.allbinary.time {

    public class NoTimeDelayHelper extends TimeDelayHelper {
    private static var SINGLETON_value:NoTimeDelayHelper;
    private static var SINGLETON_set:Boolean = false;
    public static function get SINGLETON():NoTimeDelayHelper {
        if (!NoTimeDelayHelper.SINGLETON_set) {
            NoTimeDelayHelper.SINGLETON_set = true;
            NoTimeDelayHelper.SINGLETON_value = new NoTimeDelayHelper();
        }
        return NoTimeDelayHelper.SINGLETON_value;
    }
    

    public function NoTimeDelayHelper() {
        super(0);
    }
    

    override public function isTimeTNT():Boolean {
        return true;
    }
    

    override public function isTimeSinceTNT(delay:int):Boolean {
        return true;
    }
    

    override public function isTime(currentTime:Number):Boolean {
        return true;
    }
    

    override public function isTimeSince(delay:int, currentTime:Number):Boolean {
        return true;
    }
    }
}

