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
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.physics.velocity.BasicVelocityProperties;
    import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.math.MathUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class BasePatrolAI extends BasicAI {
    private static var MAX_DISTANCE_value:*;
    private static var MAX_DISTANCE_set:Boolean = false;
    public static function get MAX_DISTANCE():* {
        if (!BasePatrolAI.MAX_DISTANCE_set) {
            BasePatrolAI.MAX_DISTANCE_set = true;
            BasePatrolAI.MAX_DISTANCE_value = SmallIntegerSingletonFactory.getInstance().getAt(2);
        }
        return BasePatrolAI.MAX_DISTANCE_value;
    }
    private static var DIRECTION_ARRAY_value:*;
    private static var DIRECTION_ARRAY_set:Boolean = false;
    public static function get DIRECTION_ARRAY():* {
        if (!BasePatrolAI.DIRECTION_ARRAY_set) {
            BasePatrolAI.DIRECTION_ARRAY_set = true;
            BasePatrolAI.DIRECTION_ARRAY_value = SmallIntegerSingletonFactory.getInstance().getAt(3);
        }
        return BasePatrolAI.DIRECTION_ARRAY_value;
    }
    private static var FIRING_DISTANCE_value:*;
    private static var FIRING_DISTANCE_set:Boolean = false;
    public static function get FIRING_DISTANCE():* {
        if (!BasePatrolAI.FIRING_DISTANCE_set) {
            BasePatrolAI.FIRING_DISTANCE_set = true;
            BasePatrolAI.FIRING_DISTANCE_value = SmallIntegerSingletonFactory.getInstance().getAt(4);
        }
        return BasePatrolAI.FIRING_DISTANCE_value;
    }
    private static var SPEED_value:*;
    private static var SPEED_set:Boolean = false;
    public static function get SPEED():* {
        if (!BasePatrolAI.SPEED_set) {
            BasePatrolAI.SPEED_set = true;
            BasePatrolAI.SPEED_value = SmallIntegerSingletonFactory.getInstance().getAt(5);
        }
        return BasePatrolAI.SPEED_value;
    }
        public var maxDistance:* = null;
        public var currentDistance:int = 0;
        public var xTotalDistance:int = 0;
        public var lastKeyDirection:int = 0;
        public var keyDirection:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasePatrolAI():void {
    
    
    this.xTotalDistance = 0;
    this.lastKeyDirection = Canvas.RIGHT;
    this.keyDirection = Canvas.RIGHT;
        }
    

    public function BasePatrolAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsBasePatrolAI();
        this.maxDistance = (hashtable.get_(BasePatrolAI.MAX_DISTANCE) as *);
        this.currentDistance = this.maxDistance.intValue();
    }
    

    public function update():void {
        this.updateTotalDistance();
        this.changeDirectionIfReachedPacingAreaMax();
    }
    

    private function updateTotalDistance():void {
        var velocityInterfaceCompositeInterface:VelocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        var velocityProperties:BasicVelocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.xTotalDistance += velocityProperties.getVelocityXBasicDecimalP().getScaled();
    }
    

    private function changeDirectionIfReachedPacingAreaMax():void {
        var mathUtil:MathUtil = MathUtil.getInstance();
        var totalDistance:int = mathUtil.abs(this.xTotalDistance);
        if (totalDistance > this.currentDistance) {
            this.nextDirection();
        }
    }
    

    public function nextDirection():void {
        if (this.lastKeyDirection == Canvas.LEFT) {
            this.keyDirection = Canvas.RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        } else if (this.lastKeyDirection == Canvas.RIGHT) {
            this.keyDirection = Canvas.LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        }
    }
    

    public function disable():void {
    }
    }
}

