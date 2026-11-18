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
    import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface;
    import org.allbinary.game.configuration.feature.InputFeatureFactory;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.util.ABHashtable;

    public class KeyPressesAIFactory implements ArtificialIntelligenceInterfaceFactoryInterface {
    

    public function getInstance3(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput):ArtificialIntelligenceInterface {
        var isSingleKeyProcessing:Boolean = InputFeatureFactory.getInstance().isSingleKeyProcessing();
        if (isSingleKeyProcessing) {
            return new KeyPressesAI(hashtable, ownerLayerInterface, gameInput);
        } else {
            return new MultiKeyPressesAI(hashtable, ownerLayerInterface, gameInput);
        }
    }
    }
}

