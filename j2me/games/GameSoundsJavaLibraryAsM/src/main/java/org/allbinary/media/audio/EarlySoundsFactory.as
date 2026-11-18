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
package org.allbinary.media.audio {

    public class EarlySoundsFactory extends BaseSoundsFactory {
    private static var instance_value:EarlySoundsFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():EarlySoundsFactory {
        if (!EarlySoundsFactory.instance_set) {
            EarlySoundsFactory.instance_set = true;
            EarlySoundsFactory.instance_value = new EarlySoundsFactory();
        }
        return EarlySoundsFactory.instance_value;
    }
    

    override public function getSoundInterfaceArray():Vector.<Sound> {
        var soundInterfaceArray:Vector.<Sound> = new Vector.<Sound>(2);
        var index:int = 0;
        soundInterfaceArray[index++] = SelectSound.getInstance();
        soundInterfaceArray[index++] = ErrorSound.getInstance();
        return soundInterfaceArray;
    }
    

    public static function getInstance():EarlySoundsFactory {
        return EarlySoundsFactory.instance;
    }
    }
}

