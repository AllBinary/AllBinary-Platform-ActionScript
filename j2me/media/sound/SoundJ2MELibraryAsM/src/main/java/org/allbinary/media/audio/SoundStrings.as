/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

    public class SoundStrings {
    private static var instance_value:SoundStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():SoundStrings {
        if (!SoundStrings.instance_set) {
            SoundStrings.instance_set = true;
            SoundStrings.instance_value = new SoundStrings();
        }
        return SoundStrings.instance_value;
    }
        public var STOP_ALL:String = null;
        public var CLOSE_ALL:String = null;
        public var SOUND:String = null;
        public var INIT_SOUND:String = null;
        public var STOPPING_SOUND:String = null;
        public var CLOSING_SOUND:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsSoundStrings():void {
    this.STOP_ALL = "stopAll";
    this.CLOSE_ALL = "closeAll";
    this.SOUND = " Sound: ";
    this.INIT_SOUND = "Initializing Sound: ";
    this.STOPPING_SOUND = "Stopping Sound: ";
    this.CLOSING_SOUND = "Closing Sound: ";
        }

        public function SoundStrings() {
            super();
            this.initFieldsSoundStrings();
        }
    

    public static function getInstance():SoundStrings {
        return SoundStrings.instance;
    }
    }
}

