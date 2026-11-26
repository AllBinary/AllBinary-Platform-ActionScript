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
package org.allbinary.game.ag.ai.scroller {
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.media.audio.PlayerQueue;
    import org.allbinary.media.audio.SecondaryPlayerQueueFactory;
    import org.allbinary.media.audio.Sound;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class HorizontalScreenPatrolAI extends BasicAI {
    private static var SOUND_value:*;
    private static var SOUND_set:Boolean = false;
    public static function get SOUND():* {
        if (!HorizontalScreenPatrolAI.SOUND_set) {
            HorizontalScreenPatrolAI.SOUND_set = true;
            HorizontalScreenPatrolAI.SOUND_value = SmallIntegerSingletonFactory.getInstance().getAt(433);
        }
        return HorizontalScreenPatrolAI.SOUND_value;
    }
        public var keyDirection:int = 0;
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var firingX:int = 0;
        private var firedIndex:int = 0;
        private var MAX_FIRE:int = 0;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var secondaryPlayerQueue:PlayerQueue = null;
        private var sound:Sound = null;

        // Java field initializers run after the base constructor
        private function initFieldsHorizontalScreenPatrolAI():void {
    this.keyDirection = Canvas.LEFT;
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.firingX = this.displayInfoSingleton.getLastHalfWidth();
    this.firedIndex = 0;
    this.MAX_FIRE = 28;
    this.timeDelayHelper = new TimeDelayHelper(240);
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance();
    
        }
    

    public function HorizontalScreenPatrolAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsHorizontalScreenPatrolAI();
        this.sound = (hashtable.get_(HorizontalScreenPatrolAI.SOUND) as Sound);
        if (this.sound == null) {
            throw new JException("Exception", "No Sound Provided!!");
        }
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        super.processKeyAI(this.keyDirection);
        if (this.timeDelayHelper.isTimeTNT()) {
            var layerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
            var currentOwnerLayerX:int = layerInterface.getXP();
            if (currentOwnerLayerX < -layerInterface.getWidth()) {
                var y:int = MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50);
                layerInterface.setPosition(int(int(this.displayInfoSingleton.getLastWidth() + layerInterface.getWidth()) + 50), y, layerInterface.getZP());
                this.firedIndex = 0;
                this.firingX = int(this.displayInfoSingleton.getLastHalfWidth() + MyRandomFactory.getInstance().getNextInt(this.displayInfoSingleton.getLastHalfWidth()));
                this.secondaryPlayerQueue.add(this.sound);
            }
            if (currentOwnerLayerX < this.firingX && currentOwnerLayerX > -layerInterface.getWidth()) {
                super.processKeyAI(Canvas.KEY_NUM1);
                var gameLayerManager:AllBinaryGameLayerManager = (allBinaryLayerManager as AllBinaryGameLayerManager);
                var FIRE:int = (int(gameLayerManager.getGameInfo().getCurrentLevel() + 12)) >> 2;
                if (FIRE > this.MAX_FIRE) {
                    FIRE = this.MAX_FIRE;
                }
                if (this.firedIndex > FIRE) {
                    this.firedIndex = 0;
                    this.firingX = JInteger.MIN_VALUE;
                }
                this.firedIndex++;
            }
        }
    }
    

    public function nextDirection():void {
    }
    }
}

