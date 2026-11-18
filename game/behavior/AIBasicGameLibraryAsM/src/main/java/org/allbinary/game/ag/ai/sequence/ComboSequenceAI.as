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

    public class ComboSequenceAI extends SequenceAI {
    

    public function ComboSequenceAI(artificialIntelligenceInterface:Vector.<ArtificialIntelligenceInterface>, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var artificialIntelligenceInterfaceArray:Vector.<ArtificialIntelligenceInterface> = this.getArtificialIntelligenceInterface();
        var size:int = artificialIntelligenceInterfaceArray.length;
        for (var index:int = 0; index < size; index++) {
            this.setIndex(index);
            super.processAI(allBinaryLayerManager);
        }
    }
    }
}

