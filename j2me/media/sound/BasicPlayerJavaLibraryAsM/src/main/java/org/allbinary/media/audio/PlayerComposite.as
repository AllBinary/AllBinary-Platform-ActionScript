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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;

    //BasicPlayer
    public class PlayerComposite implements Controllable, Player {
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var player:Player = null;
        private var timeElapsedHelper:TimeDelayHelper = null;
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerComposite():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    this.timeElapsedHelper = new TimeDelayHelper(0);
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
        }
    

    public function PlayerComposite(player:Player, repeatTime:int) {
        super();
        this.initFieldsPlayerComposite();
        this.player = player;
        this.timeElapsedHelper.delay = repeatTime;
    }
    

    public function addPlayerListener(playerListener:PlayerListener):void {
        this.player.addPlayerListener(playerListener);
    }
    

    public function removePlayerListener(playerListener:PlayerListener):void {
        this.player.removePlayerListener(playerListener);
    }
    

    public function close():void {
        this.player.close();
    }
    

    public function deallocate():void {
        this.player.deallocate();
    }
    

    public function getContentType():String {
        return this.player.getContentType();
    }
    

    public function getDuration():Number {
        return this.player.getDuration();
    }
    

    public function getMediaTime():Number {
        return this.player.getMediaTime();
    }
    

    public function prefetch():void {
        try {
            this.player.prefetch();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "prefetch", e);
        }
    }
    

    public function realize():void {
        try {
            this.player.realize();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "realize", e);
        }
    }
    

    public function getState():int {
        return this.player.getState();
    }
    

    public function setLoopCount(count:int):void {
        this.player.setLoopCount(count);
    }
    

    public function setMediaTime(now:Number):Number {
        try {
            return this.player.setMediaTime(now);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "setMediaTime", e);
            return Number(-1);
        }
    }
    

    public function start():void {
        try {
            if (this.timeElapsedHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
                this.player.start();
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.START_METHOD_NAME, e);
        }
    }
    

    public function stop():void {
        try {
            this.player.stop();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "stop", e);
        }
    }
    

    public function getControl(controlType:String):Control {
        return this.player.getControl(controlType);
    }
    

    public function getControls():Vector.<Control> {
        throw new JException("RuntimeException", "");
    }
    

    public function setVolume(leftVolume:int, rightVolume:int):void {
        var controllable2:Controllable2 = ((this.player as Controllable2));
        controllable2.setVolume(leftVolume, rightVolume);
    }
    

    public function getPlayerP():Player {
        return this.player;
    }
    }
}

