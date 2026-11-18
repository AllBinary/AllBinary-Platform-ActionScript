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
    import org.allbinary.ai.ArtificialIntelligence;
    import org.allbinary.ai.ArtificialIntelligenceInterface;
    import org.allbinary.ai.ArtificialIntelligenceTransitionInterface;
    import org.allbinary.game.ag.ai.ArrayAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;

    public class SequenceAI extends ArrayAI {
    private static const SEQUENCE_AI:String = "Sequence AI";
        private var index:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsSequenceAI():void {
    this.index = 0;
        }
    

    public function SequenceAI(artificialIntelligenceInterfaceArray:Vector.<ArtificialIntelligenceInterface>, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput);
        this.initFieldsSequenceAI();
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        this.getArtificialIntelligenceInterface()[this.index].processAI(allBinaryLayerManager);
    }
    

    public function next():void {
        this.index++;
        var artificialIntelligenceInterface:ArtificialIntelligenceInterface = this.getSelectedArtificialIntelligenceInterface();
        if (artificialIntelligenceInterface.getId() == ArtificialIntelligence.AI_ID) {
            var artificialIntelligenceTransitionInterface:ArtificialIntelligenceTransitionInterface = (artificialIntelligenceInterface as ArtificialIntelligenceTransitionInterface);
            artificialIntelligenceTransitionInterface.transition();
        }
    }
    

    public function getIndex():int {
        return this.index;
    }
    

    public function setIndex(index:int):void {
        this.index = index;
    }
    

    public function getSelectedArtificialIntelligenceInterface():ArtificialIntelligenceInterface {
        return this.getArtificialIntelligenceInterface()[this.index];
    }
    

    override public function getName():String {
        return SequenceAI.SEQUENCE_AI;
    }
    

    override public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(" Selected AI: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getSelectedArtificialIntelligenceInterface()));
        return stringBuffer.toString();
    }
    }
}

