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
    import org.allbinary.direction.Direction;
    import org.allbinary.game.state.GameState;

    public class AdConfiguration {
        public var INNERACTIVE:String = null;
        public var LEADBOLT:String = null;
        public var ADMOB:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAdConfiguration():void {
    
    
    
        }
    

    public function AdConfiguration(advertIdArray:Vector.<Object>) {
        super();
        this.initFieldsAdConfiguration();
        this.INNERACTIVE = (advertIdArray[0] as String);
        this.ADMOB = (advertIdArray[1] as String);
        this.LEADBOLT = (advertIdArray[2] as String);
    }
    

    public function getValidAdSpots():Vector.<Direction> {
        return new Vector.<Direction>(0);
    }
    

    public function process(gameState:GameState):void {
    }
    

    public function processDemo(state:int):void {
    }
    

    public function setShowAds():void {
    }
    

    public function setToggleAds(showAds:Boolean):void {
    }
    

    public function isShowAds():Boolean {
        return true;
    }
    }
}

