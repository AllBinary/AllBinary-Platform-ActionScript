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
package org.allbinary.game.ag.ai.sequence {
    import org.allbinary.ai.ArtificialIntelligenceInterface;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class NumberLayersSequenceAI extends SequenceAI {
        private var numberOfLayersLeft:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsNumberLayersSequenceAI():void {
    
        }
    

    public function NumberLayersSequenceAI(numberOfEnemiesLeft:int, artificialIntelligenceInterface:Vector.<ArtificialIntelligenceInterface>, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        this.initFieldsNumberLayersSequenceAI();
        this.numberOfLayersLeft = numberOfEnemiesLeft;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.getIndex() == 0) {
            if (allBinaryLayerManager.getSize() < this.numberOfLayersLeft) {
                this.setIndex(1);
            }
        }
        super.processAI(allBinaryLayerManager);
    }
    }
}

