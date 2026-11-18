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
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.physics.velocity.BasicVelocityProperties;
    import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.math.BasicDecimal;

    public class UpDownVectorAI extends BasicAI {
        private var velocityInterface:BasicVelocityProperties = null;
        private var index:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsUpDownVectorAI():void {
    
    this.index = 0;
        }
    

    public function UpDownVectorAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsUpDownVectorAI();
        var velocityInterfaceCompositeInterface:VelocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.velocityInterface.getVelocityYBasicDecimalP().setint(0);
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var y:int = int(this.getOwnerLayerInterface().getHeight() * 270);
        if (this.index < 5) {
            basicDecimal = this.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.addint(y);
            this.index++;
        } else if (this.index < 10) {
            var basicDecimal:BasicDecimal = this.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.subtractint(y);
            this.index++;
        } else {
            this.index = 0;
            this.processAI(allBinaryLayerManager);
        }
    }
    }
}

