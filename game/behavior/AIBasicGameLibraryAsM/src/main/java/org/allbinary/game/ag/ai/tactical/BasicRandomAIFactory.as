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
    import org.allbinary.ai.ArtificialIntelligenceInterface;
    import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.ag.ai.InputProbability;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.util.ABHashtable;

    public class BasicRandomAIFactory implements ArtificialIntelligenceInterfaceFactoryInterface {
    

    public function getInstance3(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput):ArtificialIntelligenceInterface {
        var visitor:Visitor = (hashtable.get_((BasicAI.AI_VISITOR as Object)) as Visitor);
        if (visitor == null) {
            throw new JException("Exception", "No Visitor Provided");
        }
        var inputProbability:InputProbability = (hashtable.get_((InputProbability.INPUT_PROBABILITY as Object)) as InputProbability);
        return new BasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor);
    }
    }
}

