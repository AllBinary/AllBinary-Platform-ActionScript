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
package org.allbinary.time {
    import java.lang.JLong;

    public class GameTickTimeDelayHelper {
        public var timeDelta:Number = 0;
        public var startTime:Number = 0;
        public var lastStartTime:Number = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameTickTimeDelayHelper():void {
    this.timeDelta = 0;
    
    
        }
    

    public function GameTickTimeDelayHelper(startTime:Number) {
        super();
        this.initFieldsGameTickTimeDelayHelper();
        this.startTime = startTime;
        this.lastStartTime = 0;
    }
    

    public function setStartTime():Number {
        this.startTime = JSystem.currentTimeMillis();
        return this.startTime;
    }
    

    public function loop():void {
        if (this.lastStartTime == JLong.MIN_VALUE) {
            this.timeDelta = 0;
        } else {
            this.timeDelta = JSystem.currentTimeMillis() - this.lastStartTime;
        }
    }
    

    public function getTimeFromStart():Number {
        return this.startTime - this.lastStartTime;
    }
    }
}

