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
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.animation.RotationAnimationInterface;
    import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface;
    import org.allbinary.game.ag.ai.tactical.LurchAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.math.AngleIncrementInfo;

    public class LurchRotationAI extends LurchAI {
        private var rotationAnimationInterface:IndexedAnimation = null;

        // Java field initializers run after the base constructor
        private function initFieldsLurchRotationAI():void {
    
        }
    

    public function LurchRotationAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsLurchRotationAI();
        var rotationAnimationInterfaceCompositeInterface:RotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
        this.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface();
        this.update();
    }
    

    override public function reverse():void {
        super.reverse();
        this.update();
    }
    

    private function update():void {
        if (this.currentRelativeAngle == 0) {
            rotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
            angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
            rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
        } else if (this.currentRelativeAngle == 180) {
            var rotationAnimationInterface:RotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
            var angleIncrementInfo:AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
            var rotationAnimationInterfaceCompositeInterface:RotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue());
        }
    }
    }
}

