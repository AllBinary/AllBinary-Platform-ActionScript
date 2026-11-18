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
package org.allbinary.business.advertisement {
    import org.allbinary.game.GameAdState;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;

    public class BottomLimiter {
    private static var instance_value:BottomLimiter;
    private static var instance_set:Boolean = false;
    private static function get instance():BottomLimiter {
        if (!BottomLimiter.instance_set) {
            BottomLimiter.instance_set = true;
            BottomLimiter.instance_value = new BottomLimiter();
        }
        return BottomLimiter.instance_value;
    }
        private var bottom:int = 0;
        private var deltaY:int = 0;
        private var lower:int = 0;
        private var higher:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBottomLimiter():void {
    this.bottom = 0;
    this.deltaY = 0;
    this.lower = 0;
    this.higher = 0;
        }
    

    public static function getInstance():BottomLimiter {
        return BottomLimiter.instance;
    }
    

    public function BottomLimiter() {
        super();
        this.initFieldsBottomLimiter();
    }
    

    public function init(lower:int, higher:int):void {
        this.lower = lower;
        this.higher = higher;
    }
    

    public function update():void {
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var gameAdState:GameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
        if (gameAdState.isShowingAt()) {
            this.deltaY = this.higher;
        } else {
            this.deltaY = this.lower;
        }
        this.bottom = int(displayInfo.getLastHeight() - this.deltaY);
    }
    

    public function getDeltaY():int {
        return this.deltaY;
    }
    

    public function getBottom():int {
        return this.bottom;
    }
    }
}

