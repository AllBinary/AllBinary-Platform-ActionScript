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
    import org.allbinary.ai.ArtificialIntelligence;
    import org.allbinary.ai.ArtificialIntelligenceTransitionInterface;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.animation.RotationAnimationInterface;
    import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.physics.velocity.BasicVelocityProperties;
    import org.allbinary.game.physics.velocity.VelocityInterface;
    import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.math.AngleIncrementInfo;
    import org.allbinary.util.CircularIndexUtil;
    import java.lang.JInteger;

    public class HorizontaRotationManeuverAI extends BasicAI implements ArtificialIntelligenceTransitionInterface {
        private var circularIndexUtil:CircularIndexUtil = null;
        private var currentSpeedDivisor:int = 0;
        private var rotationAnimationInterface:IndexedAnimation = null;
        private var baseVelocityInterface:BasicVelocityProperties = null;
        private var velocityInterface:VelocityInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsHorizontaRotationManeuverAI():void {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(10, JInteger.MAX_VALUE);
    this.currentSpeedDivisor = 5;
    
    
    
        }
    

    public function HorizontaRotationManeuverAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsHorizontaRotationManeuverAI();
        var rotationAnimationInterfaceCompositeInterface:RotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
        this.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface();
        var velocityInterfaceCompositeInterface:VelocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        this.baseVelocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.velocityInterface = (this.baseVelocityInterface as VelocityInterface);
        var rotationAnimationInterface:RotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
        var angleIncrementInfo:AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
    }
    

    public function transition():void {
        var rotationAnimationInterface:RotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
        var angleIncrementInfo:AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        var rotationAnimationInterfaceCompositeInterface:RotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
        var allbinaryLayer:AllBinaryLayer = this.getOwnerLayerInterface();
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP());
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var rotationAnimationInterface:RotationAnimationInterface = ((this.rotationAnimationInterface as RotationAnimationInterface));
        var angleIncrementInfo:AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        var frame:int = this.rotationAnimationInterface.getFrame();
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        if (int(ownerLayerInterface.getXP() - ownerLayerInterface.getWidth()) <= 0 && frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            this.reverse();
            this.drop();
        }
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        if (int(ownerLayerInterface.getX2() + ownerLayerInterface.getWidth()) > displayInfo.getLastWidth() && frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        var index:int = this.circularIndexUtil.getIndex();
        if (index % this.currentSpeedDivisor == 0 && index % 2 == 0) {
            super.processKeyAI(Canvas.UP);
            this.velocityInterface.limitMaxXYVelocity(int(this.velocityInterface.getMaxForwardVelocity() / this.currentSpeedDivisor));
        }
        this.circularIndexUtil.next();
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            super.processKeyAI(Canvas.KEY_NUM0);
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            super.processKeyAI(Canvas.KEY_POUND);
        }
    }
    

    public function reverse():void {
        var rotationAnimationInterface:RotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
        var angleIncrementInfo:AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        var frame:int = this.rotationAnimationInterface.getFrame();
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
            this.baseVelocityInterface.zero();
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            var rotationAnimationInterfaceCompositeInterface:RotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue());
            this.baseVelocityInterface.zero();
        }
    }
    

    private function accelerate():void {
        if (this.currentSpeedDivisor > 1) {
            this.currentSpeedDivisor--;
        }
    }
    

    private function drop():void {
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var y:int = ownerLayerInterface.getYP();
        if (int(ownerLayerInterface.getY2() + ownerLayerInterface.getHeight()) > displayInfo.getLastHeight()) {
            y = 0;
        } else {
            y += int(ownerLayerInterface.getHeight() + 1);
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
    

    override public function getId():int {
        return ArtificialIntelligence.AI_ID;
    }
    }
}

