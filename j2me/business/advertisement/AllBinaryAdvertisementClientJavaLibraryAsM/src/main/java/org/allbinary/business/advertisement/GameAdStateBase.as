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
package org.allbinary.business.advertisement {
    import org.allbinary.game.GameType;
    import org.allbinary.game.state.GameState;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;

    public class GameAdStateBase {
        public var adConfigurationP:AdConfiguration = null;
        public var advertisementsP:Advertisements = null;
        public var okayToShowAdsP:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsGameAdStateBase():void {
    
    this.advertisementsP = new Advertisements();
    this.okayToShowAdsP = false;
        }
    

    public function GameAdStateBase(adConfiguration:AdConfiguration) {
        super();
        this.initFieldsGameAdStateBase();
        this.adConfigurationP = adConfiguration;
    }
    

    public function initViewArray(viewArray:Vector.<Object>):void {
    }
    

    public function onStart(anyType:Object):void {
        this.init();
    }
    

    public function init(...args):void {
        if (args.length == 0) {
            this.init_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo0():void {
    }
    

    public function isShowingAtLocation(location:int):Boolean {
        return false;
    }
    

    public function isShowingAt():Boolean {
        return false;
    }
    

    public function show():void {
    }
    

    public function hide():void {
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function processAdState(gameState:GameState, gameType:GameType):void {
    }
    

    public function processPageAdState():void {
    }
    

    public function playingAdState():void {
    }
    

    public function playingAdStateWH(width:int, height:int):void {
    }
    

    public function notPlayingAdState():void {
    }
    

    public function setGameIsReady(gameIsReady:Boolean):void {
    }
    

    public function isGameIsReady():Boolean {
        return false;
    }
    

    public function getAdvertisements():Advertisements {
        return this.advertisementsP;
    }
    

    public function getAdConfiguration():AdConfiguration {
        return this.adConfigurationP;
    }
    

    public function isOkayToShowPageAd():Boolean {
        return false;
    }
    

    public function setOkayToShowAds(okayToShowAds:Boolean):void {
        this.okayToShowAdsP = okayToShowAds;
    }
    

    public function isOkayToShowAds():Boolean {
        return this.okayToShowAdsP;
    }
    

    public function isEnabled():Boolean {
        return false;
    }
    }
}

