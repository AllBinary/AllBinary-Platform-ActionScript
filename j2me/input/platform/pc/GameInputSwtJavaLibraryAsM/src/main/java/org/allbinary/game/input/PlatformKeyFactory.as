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
package org.allbinary.game.input {
    import org.allbinary.logic.NullUtil;

    public class PlatformKeyFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!PlatformKeyFactory.instance_set) {
            PlatformKeyFactory.instance_set = true;
            PlatformKeyFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return PlatformKeyFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        PlatformKeyFactory.instance_set = true;
        PlatformKeyFactory.instance_value = value;
    }
    

    public static function getInstance():PlatformKeyFactory {
        if (PlatformKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            PlatformKeyFactory.instance = new PlatformKeyFactory();
        }
        return (PlatformKeyFactory.instance as PlatformKeyFactory);
    }
    

    public function getString(keyCode:int):String {
        return PCGameKey.getString(keyCode);
    }
    

    public function isSubmission(input:Input):Boolean {
        return PCKeyFactory.getInstance().isSubmission(input);
    }
    

    public function isDelete(input:Input):Boolean {
        return PCKeyFactory.getInstance().isDelete(input);
    }
    

    public function isBackSpace(input:Input):Boolean {
        return PCKeyFactory.getInstance().isBackSpace(input);
    }
    

    public function isUp(input:Input):Boolean {
        return PCKeyFactory.getInstance().isUp(input);
    }
    

    public function isDown(input:Input):Boolean {
        return PCKeyFactory.getInstance().isDown(input);
    }
    

    public function isEnter(input:Input):Boolean {
        return PCKeyFactory.getInstance().isEnter(input);
    }
    

    public function isLeft(input:Input):Boolean {
        return PCKeyFactory.getInstance().isLeft(input);
    }
    

    public function isRight(input:Input):Boolean {
        return PCKeyFactory.getInstance().isRight(input);
    }
    }
}

