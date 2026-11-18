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
    import org.allbinary.bounds.BoundsVisitorInterface;
    import org.allbinary.game.physics.velocity.VelocityInterface;
    import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface;
    import org.allbinary.layer.LayerInterface;
    import org.allbinary.logic.communication.log.LogUtil;

    public class ReverseVelocityBoundsVisitor implements BoundsVisitorInterface {
        public var logUtil:LogUtil = null;
        public var velocityInterface:VelocityInterface = null;
        private var layerInterface:LayerInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsReverseVelocityBoundsVisitor():void {
    this.logUtil = LogUtil.getInstance();
    
    
        }
    

    public function ReverseVelocityBoundsVisitor(layerInterface:LayerInterface) {
        super();
        this.initFieldsReverseVelocityBoundsVisitor();
        this.layerInterface = layerInterface;
        var velocityInterfaceCompositeInterface:VelocityInterfaceCompositeInterface = (layerInterface as VelocityInterfaceCompositeInterface);
        this.velocityInterface = (velocityInterfaceCompositeInterface.getVelocityProperties() as VelocityInterface);
    }
    

    public function getX():int {
        return this.layerInterface.getXP();
    }
    

    public function getY():int {
        return this.layerInterface.getYP();
    }
    

    public function minX():void {
        if (this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0) {
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        }
    }
    

    public function maxX():void {
        if (this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0) {
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        }
    }
    

    public function minY():void {
        if (this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0) {
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        }
    }
    

    public function maxY():void {
        if (this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0) {
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        }
    }
    }
}

