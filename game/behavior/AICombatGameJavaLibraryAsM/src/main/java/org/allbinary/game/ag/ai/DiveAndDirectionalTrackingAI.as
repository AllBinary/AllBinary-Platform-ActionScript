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
package org.allbinary.game.ag.ai {
    import org.allbinary.ai.ArtificialIntelligenceInterface;
    import org.allbinary.direction.Direction;
    import org.allbinary.direction.DirectionFactory;
    import org.allbinary.direction.DirectionalCompositeInterface;
    import org.allbinary.direction.DirectionalInterface;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.combat.destroy.event.DestroyedEvent;
    import org.allbinary.game.combat.destroy.event.DestroyedEventHandler;
    import org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface;
    import org.allbinary.game.identification.Group;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.physics.velocity.BasicVelocityProperties;
    import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface;
    import org.allbinary.game.tracking.TrackingEvent;
    import org.allbinary.game.tracking.TrackingEventHandler;
    import org.allbinary.game.tracking.TrackingEventListenerInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.math.MathUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class DiveAndDirectionalTrackingAI extends BasicAI implements TrackingEventListenerInterface, DestroyedEventListenerInterface {
        private var mathUtil:MathUtil = null;
        private var directionFactory:DirectionFactory = null;
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var list:BasicArrayList = null;
        private var directionalInterface:DirectionalInterface = null;
        private var velocityInterface:BasicVelocityProperties = null;
        private var directionToKeyMap:Vector.<int> = null;
        private var initialDropped:Boolean = false;
        private var diveP:Boolean = false;
        private var directionOfTarget:Direction = null;
        private var MIN_DISTANCE:int = 0;
        private var lastTrackingLayerInterface:AllBinaryLayer = null;
        private var artificialIntelligenceInterface:ArtificialIntelligenceInterface = null;
        private var aiVistor:Visitor = null;
        private var lastDirection:Direction = null;

        // Java field initializers run after the base constructor
        private function initFieldsDiveAndDirectionalTrackingAI():void {
    this.mathUtil = MathUtil.getInstance();
    this.directionFactory = DirectionFactory.getInstance();
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.timeDelayHelper = new TimeDelayHelper(500);
    this.list = new BasicArrayListD();
    
    
    this.directionToKeyMap = new <int>[Canvas.LEFT, Canvas.DOWN, Canvas.UP, Canvas.RIGHT];
    this.initialDropped = false;
    this.diveP = false;
    this.directionOfTarget = Direction.getInstance1(0);
    this.MIN_DISTANCE = 40;
    this.lastTrackingLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    
    
    this.lastDirection = DirectionFactory.getInstance().NO_DIRECTION;
        }
    

    public function DiveAndDirectionalTrackingAI(ownerLayerInterface:AllBinaryLayer, artificialIntelligenceInterface:ArtificialIntelligenceInterface, gameInput:GameInput, visitor:Visitor) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsDiveAndDirectionalTrackingAI();
        this.aiVistor = visitor;
        this.artificialIntelligenceInterface = artificialIntelligenceInterface;
        var directionalCompositeInterface:DirectionalCompositeInterface = (this.getOwnerLayerInterface() as DirectionalCompositeInterface);
        this.directionalInterface = directionalCompositeInterface.getDirectionalInterface();
        var velocityInterfaceCompositeInterface:VelocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        DestroyedEventHandler.getInstance().addListenerInterface(this);
        this.init();
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.isBeyondTarget()) {
            this.init();
            this.velocityInterface.zero();
        }
        if (!this.diveP) {
            this.target(allBinaryLayerManager);
        } else {
            this.dive();
            this.attack();
        }
        this.list.clear();
    }
    

    private function init():void {
        this.diveP = false;
        this.directionOfTarget = DirectionFactory.getInstance().NOT_BORDERED_WITH;
        TrackingEventHandler.getInstance().addListenerInterface(this);
    }
    

    private function target(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.list.size() == 0) {
            return;
        }
        var lastTrackingEvent:TrackingEvent = (this.list.removeAt(0) as TrackingEvent);
        this.lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface();
        var layerInterface:AllBinaryLayer = this.lastTrackingLayerInterface;
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var groupArray:Vector.<Group> = layerInterface.getGroupInterface();
        var ownerGroupArray:Vector.<Group> = ownerLayerInterface.getGroupInterface();
        if (groupArray === ownerGroupArray) {
            return;
        }
        var x:int = this.lastTrackingLayerInterface.getXP();
        var y:int = this.lastTrackingLayerInterface.getYP();
        var yDistance:int = int(int(ownerLayerInterface.getYP() - y) - ownerLayerInterface.getHeight());
        var xDistance:int = int(int(ownerLayerInterface.getXP() - x) - ownerLayerInterface.getWidth());
        var directionFactory:DirectionFactory = DirectionFactory.getInstance();
        if (this.mathUtil.abs(yDistance) > this.mathUtil.abs(xDistance)) {
            if (yDistance > this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.UP;
            } else if (yDistance < -this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.DOWN;
            }
        } else {
            if (xDistance > this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.LEFT;
            } else if (xDistance < -this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.RIGHT;
            }
        }
        if (!this.initialDropped && this.directionOfTarget != directionFactory.NOT_BORDERED_WITH) {
            this.drop();
        }
        if (this.initialDropped) {
            if (this.directionOfTarget == directionFactory.UP || this.directionOfTarget == directionFactory.DOWN) {
                this.verticalTargeting(x);
            } else if (this.directionOfTarget == directionFactory.LEFT || this.directionOfTarget == directionFactory.RIGHT) {
                this.horizontalTargeting(y);
            } else {
                this.artificialIntelligenceInterface.processAI(allBinaryLayerManager);
            }
        }
    }
    

    private function verticalTargeting(x:int):void {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP() < x) {
            this.moveRight();
        }
        if (ownerLayerInterface.getXP() > x) {
            this.moveLeft();
        }
        if (ownerLayerInterface.getXP() > int(x - 3) && ownerLayerInterface.getXP() < int(x + 3)) {
            this.setDive();
        }
    }
    

    private function horizontalTargeting(y:int):void {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getYP() < y) {
            this.moveDown();
        }
        if (ownerLayerInterface.getYP() > y) {
            this.moveUp();
        }
        if (ownerLayerInterface.getYP() > int(y - 3) && ownerLayerInterface.getYP() < int(y + 3)) {
            this.setDive();
        }
    }
    

    private function setDive():void {
        this.diveP = true;
        this.velocityInterface.zero();
        TrackingEventHandler.getInstance().removeListener(this);
    }
    

    private function moveRight():void {
        this.setLastDirection(this.directionFactory.RIGHT);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private function moveLeft():void {
        this.setLastDirection(this.directionFactory.LEFT);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private function moveDown():void {
        this.setLastDirection(this.directionFactory.DOWN);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private function moveUp():void {
        this.setLastDirection(this.directionFactory.UP);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    private function dive():void {
        this.directionalInterface.setFrameByDirection(this.directionOfTarget);
        this.aiVistor.visit(this);
    }
    

    private function attack():void {
        super.processKeyAI(Canvas.KEY_NUM1);
    }
    

    private function drop():void {
        if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            this.initialDropped = true;
            this.aiVistor.visit(this);
        }
    }
    

    private function isBeyondTarget():Boolean {
        if (this.directionOfTarget == this.directionFactory.DOWN) {
            if (this.getOwnerLayerInterface().getYP() > int(this.lastTrackingLayerInterface.getYP() + this.MIN_DISTANCE)) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.UP) {
            if (this.getOwnerLayerInterface().getYP() < int(this.lastTrackingLayerInterface.getYP() + this.MIN_DISTANCE)) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.RIGHT) {
            if (this.getOwnerLayerInterface().getXP() > int(this.lastTrackingLayerInterface.getXP() + this.MIN_DISTANCE)) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.LEFT) {
            if (this.getOwnerLayerInterface().getXP() < int(this.lastTrackingLayerInterface.getXP() + this.MIN_DISTANCE)) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onMovement(trackingEvent:TrackingEvent):void {
        this.list.add(trackingEvent);
    }
    

    public function onDestroyed(destroyedEvent:DestroyedEvent):void {
        if (this.getOwnerLayerInterface() == destroyedEvent.getLayerInterface()) {
            TrackingEventHandler.getInstance().removeListener(this);
            DestroyedEventHandler.getInstance().removeListener(this);
        }
    }
    

    public function setLastDirection(lastDirection:Direction):void {
        this.lastDirection = lastDirection;
        var value:int = this.getLastDirection().getValue();
        if (value < 4) {
            super.setLastKey(this.directionToKeyMap[value]);
        }
    }
    

    override public function setLastKey(lastKey:int):void {
        super.setLastKey(lastKey);
        if (this.getLastKey() == Canvas.LEFT) {
            this.lastDirection = DirectionFactory.getInstance().LEFT;
        } else if (this.getLastKey() == Canvas.DOWN) {
            this.lastDirection = DirectionFactory.getInstance().DOWN;
        } else if (this.getLastKey() == Canvas.UP) {
            this.lastDirection = DirectionFactory.getInstance().UP;
        } else if (this.getLastKey() == Canvas.RIGHT) {
            this.lastDirection = DirectionFactory.getInstance().RIGHT;
        }
    }
    

    public function getLastDirection():Direction {
        return this.lastDirection;
    }
    

    override public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(" LastDirection: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getLastDirection()));
        return stringBuffer.toString();
    }
    }
}

