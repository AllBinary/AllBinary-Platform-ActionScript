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
    import org.allbinary.direction.Direction;
    import org.allbinary.direction.DirectionCompositeInterface;
    import org.allbinary.direction.DirectionFactory;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.tracking.TrackingEvent;
    import org.allbinary.game.tracking.TrackingEventHandler;
    import org.allbinary.game.tracking.TrackingEventListenerInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.layer.LayerInterface;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class PacePatrolAI extends BasePatrolAI implements TrackingEventListenerInterface {
        private var trackingList:BasicArrayList = null;
        private var firingDistance:int = 0;
        public var isFollowLimitedByTerrain:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsPacePatrolAI():void {
    
    this.firingDistance = 0;
    this.isFollowLimitedByTerrain = false;
        }
    

    public function PacePatrolAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(hashtable, ownerLayerInterface, gameInput);
        this.initFieldsPacePatrolAI();
        TrackingEventHandler.getInstance().addListenerInterface(this);
        this.trackingList = new BasicArrayListD();
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        this.update();
        var direction:Direction = this.setFiringDirectionForTargetIfInRange();
        var directionFactory:DirectionFactory = DirectionFactory.getInstance();
        if (direction == directionFactory.LEFT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                super.processKeyAI(Canvas.LEFT);
            }
            this.keyDirection = Canvas.LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            super.processKeyAI(Canvas.KEY_NUM1);
        } else if (direction == directionFactory.RIGHT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                super.processKeyAI(Canvas.RIGHT);
            }
            this.keyDirection = Canvas.RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            super.processKeyAI(Canvas.KEY_NUM1);
        } else {
            super.processKeyAI(this.keyDirection);
        }
    }
    

    private function setFiringDirectionForTargetIfInRange():Direction {
        var directionFactory:DirectionFactory = DirectionFactory.getInstance();
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var direction:Direction = directionFactory.NOT_BORDERED_WITH;
        var lastTrackingEvent:TrackingEvent = null;
        var lastTrackingLayerInterface:LayerInterface = null;
        var directionCompositeInterface:DirectionCompositeInterface = null;
        var size:int = this.trackingList.size();
        for (var index:int = 0; index < size; index++) {
            lastTrackingEvent = (this.trackingList.get_(0) as TrackingEvent);
            lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface();
            var x:int = lastTrackingLayerInterface.getXP();
            var y:int = lastTrackingLayerInterface.getYP();
            var yDistance:int = int(int(ownerLayerInterface.getYP() - y) - ownerLayerInterface.getHeight());
            var xDistance:int = int(int(ownerLayerInterface.getXP() - x) - ownerLayerInterface.getWidth());
            var absXDistance:int = (xDistance < 0 ? -xDistance : xDistance);
            var absYDistance:int = (yDistance < 0 ? -yDistance : yDistance);
            if (absYDistance <= 100) {
                if (absXDistance < int(this.getFiringDistance() / 2)) {
                    directionCompositeInterface = (this.getOwnerLayerInterface() as DirectionCompositeInterface);
                    if (xDistance < 0 && directionCompositeInterface.getDirection() == directionFactory.RIGHT) {
                        direction = directionFactory.RIGHT;
                    } else if (xDistance > 0 && directionCompositeInterface.getDirection() == directionFactory.LEFT) {
                        direction = directionFactory.LEFT;
                    }
                }
            }
        }
        return direction;
    }
    

    override public function disable():void {
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onMovement(trackingEvent:TrackingEvent):void {
        this.trackingList.clear();
        this.trackingList.add(trackingEvent);
    }
    

    public function getFiringDistance():int {
        return this.firingDistance;
    }
    

    public function setFiringDistance(firingDistance:int):void {
        this.firingDistance = firingDistance;
    }
    }
}

