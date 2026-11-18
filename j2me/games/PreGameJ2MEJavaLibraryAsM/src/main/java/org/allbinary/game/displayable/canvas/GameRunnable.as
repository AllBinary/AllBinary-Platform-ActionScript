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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import java.lang.JThread;
    import java.lang.JRunnable;

    public class GameRunnable implements JRunnable {
        public var WAIT:int = 0;
        public var FAST:int = 0;
        public var waitInMillis:Number = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameRunnable():void {
    this.WAIT = 240;
    this.FAST = 60;
    this.waitInMillis = Number(this.WAIT);
        }
    

    public function GameRunnable() {
        super();
        this.initFieldsGameRunnable();
    }
    

    public function run():void {
        DisplayInfoSingleton.getInstance().process();
    }
    

    public function processLoopSleep():void {
        JThread.sleep(this.waitInMillis);
    }
    }
}

