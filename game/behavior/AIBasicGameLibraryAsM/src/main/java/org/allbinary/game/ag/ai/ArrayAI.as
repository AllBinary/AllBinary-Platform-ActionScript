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
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.game.ai.BasicAI;

    public class ArrayAI extends BasicAI {
        private var artificialIntelligenceInterfaceArray:Vector.<ArtificialIntelligenceInterface> = null;

        // Java field initializers run after the base constructor
        private function initFieldsArrayAI():void {
    
        }
    

    public function ArrayAI(artificialIntelligenceInterface:Vector.<ArtificialIntelligenceInterface>, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsArrayAI();
        this.artificialIntelligenceInterfaceArray = artificialIntelligenceInterface;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var size:int = this.artificialIntelligenceInterfaceArray.length;
        for (var index:int = 0; index < size; index++) {
            this.artificialIntelligenceInterfaceArray[index].processAI(allBinaryLayerManager);
        }
    }
    

    public function getArtificialIntelligenceInterface():Vector.<ArtificialIntelligenceInterface> {
        return this.artificialIntelligenceInterfaceArray;
    }
    }
}

