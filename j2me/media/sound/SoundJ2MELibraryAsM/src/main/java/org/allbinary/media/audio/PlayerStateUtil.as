/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
    import org.allbinary.string.CommonStrings;

    public class PlayerStateUtil {
    private static var instance_value:PlayerStateUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():PlayerStateUtil {
        if (!PlayerStateUtil.instance_set) {
            PlayerStateUtil.instance_set = true;
            PlayerStateUtil.instance_value = new PlayerStateUtil();
        }
        return PlayerStateUtil.instance_value;
    }
        private var commonStrings:CommonStrings = null;
        public var UNREALIZED:String = null;
        public var REALIZED:String = null;
        public var PREFETCHED:String = null;
        public var STARTED:String = null;
        public var CLOSED:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerStateUtil():void {
    this.commonStrings = CommonStrings.getInstance();
    this.UNREALIZED = "UNREALIZED";
    this.REALIZED = "REALIZED";
    this.PREFETCHED = "PREFETCHED";
    this.STARTED = "STARTED";
    this.CLOSED = "CLOSED";
        }

        public function PlayerStateUtil() {
            super();
            this.initFieldsPlayerStateUtil();
        }
    

    public static function getInstance():PlayerStateUtil {
        return PlayerStateUtil.instance;
    }
    

    public function convert(state:int):String {
        if (state == Player.UNREALIZED) {
            return this.UNREALIZED;
        } else if (state == Player.REALIZED) {
            return this.REALIZED;
        } else if (state == Player.PREFETCHED) {
            return this.PREFETCHED;
        } else if (state == Player.STARTED) {
            return this.STARTED;
        } else if (state == Player.CLOSED) {
            return this.CLOSED;
        }
        return this.commonStrings.UNKNOWN;
    }
    }
}

