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
    import org.allbinary.game.ag.ai.sequence.SequenceAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.layer.identification.GroupLayerManagerListener;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import java.lang.JInteger;

    public class NumberOnOwnGroupSequenceAI extends SequenceAI {
        private var numberOnSameTeam:Vector.<*> = null;

        // Java field initializers run after the base constructor
        private function initFieldsNumberOnOwnGroupSequenceAI():void {
    
        }
    

    public function NumberOnOwnGroupSequenceAI(numberOnSameTeam:Vector.<*>, artificialIntelligenceInterface:Vector.<ArtificialIntelligenceInterface>, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        this.initFieldsNumberOnOwnGroupSequenceAI();
        this.numberOnSameTeam = numberOnSameTeam;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var layerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var index:int = this.getIndex();
        if (this.numberOnSameTeam.length > index) {
            var size:int = GroupLayerManagerListener.getInstance().getGroupSizeFromInterface(layerInterface);
            if (this.numberOnSameTeam[index].intValue() > size) {
                this.next();
            }
        }
        super.processAI(allBinaryLayerManager);
    }
    }
}

