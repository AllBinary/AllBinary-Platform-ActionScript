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
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    //BasicPlayerJavaLibrary
    public class BasicPlayer implements Player, Controllable2 {
    public static var CONTROL_TYPE:String = "ToneControl";
        public var commonStrings:CommonStrings = null;
        public var listenersList:BasicArrayList = null;
        public var stateP:int = 0;
        public var loopCountP:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicPlayer():void {
    this.commonStrings = CommonStrings.getInstance();
    this.listenersList = new BasicArrayListD();
    this.stateP = 0;
    this.loopCountP = 0;
        }
    

    public function BasicPlayer() {
        super();
        this.initFieldsBasicPlayer();
        this.setLoopCount(0);
        this.setState(Player.UNREALIZED);
    }
    

    public function getContentType():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function getControl(controlType:String):Control {
        return new NullControl();
    }
    

    public function getControls():Vector.<Control> {
        return new Vector.<Control>(0);
    }
    

    public function close():void {
    }
    

    public function addPlayerListener(playerListener:PlayerListener):void {
        if (!this.listenersList.contains(playerListener)) {
            this.listenersList.add(playerListener);
        }
    }
    

    public function removePlayerListener(playerListener:PlayerListener):void {
        this.listenersList.remove(playerListener);
    }
    

    public function getState():int {
        return this.stateP;
    }
    

    public function setState(state:int):void {
        this.stateP = state;
    }
    

    public function getDuration():Number {
        return 0;
    }
    

    public function getMediaTime():Number {
        return 0;
    }
    

    public function deallocate():void {
    }
    

    public function prefetch():void {
    }
    

    public function realize():void {
    }
    

    public function setLoopCount(count:int):void {
        this.loopCountP = count;
    }
    

    public function getLoopCount():int {
        return this.loopCountP;
    }
    

    public function setMediaTime(now:Number):Number {
        return 0;
    }
    

    public function start():void {
        this.setState(Player.STARTED);
    }
    

    public function stop():void {
        this.setState(Player.PREFETCHED);
    }
    

    public function setVolume(leftVolume:int, rightVolume:int):void {
    }
    }
}

