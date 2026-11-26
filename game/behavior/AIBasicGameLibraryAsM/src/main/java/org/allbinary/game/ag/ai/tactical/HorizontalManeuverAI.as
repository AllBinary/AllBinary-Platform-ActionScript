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
package org.allbinary.game.ag.ai.tactical {
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class HorizontalManeuverAI extends BasicAI {
        public var currentRelativeAngle:int = 0;
        private var currentSpeed:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsHorizontalManeuverAI():void {
    this.currentRelativeAngle = 0;
    
        }
    

    public function HorizontalManeuverAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsHorizontalManeuverAI();
        this.currentSpeed = 5;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var x:int = ownerLayerInterface.getXP();
        if (int(ownerLayerInterface.getXP() - this.currentSpeed) <= 0) {
            this.reverse();
            this.drop();
        }
        if (int(ownerLayerInterface.getX2() + this.currentSpeed) > DisplayInfoSingleton.getInstance().getLastWidth()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        if (this.currentRelativeAngle == 0) {
            x += this.currentSpeed;
        } else if (this.currentRelativeAngle == 180) {
            x -= this.currentSpeed;
        }
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP());
        if (this.currentRelativeAngle == 0) {
            super.processKeyAI(Canvas.KEY_NUM0);
        } else if (this.currentRelativeAngle == 180) {
            super.processKeyAI(Canvas.KEY_POUND);
        }
    }
    

    public function reverse():void {
        if (this.currentRelativeAngle == 180) {
            this.currentRelativeAngle = 0;
        } else if (this.currentRelativeAngle == 0) {
            this.currentRelativeAngle = 180;
        }
    }
    

    private function accelerate():void {
        if (this.currentSpeed < 20) {
            this.currentSpeed++;
        }
    }
    

    private function drop():void {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var y:int = ownerLayerInterface.getYP();
        if (int(ownerLayerInterface.getY2() + ownerLayerInterface.getHeight()) > DisplayInfoSingleton.getInstance().getLastHeight()) {
            y = 0;
        } else {
            y += int(ownerLayerInterface.getHeight() + 1);
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
    }
}

