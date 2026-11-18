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
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.util.ABHashtable;

    public class NullAIFactory implements ArtificialIntelligenceInterfaceFactoryInterface {
    private static var NULL_AI_value:NullAI;
    private static var NULL_AI_set:Boolean = false;
    private static function get NULL_AI():NullAI {
        if (!NullAIFactory.NULL_AI_set) {
            NullAIFactory.NULL_AI_set = true;
            NullAIFactory.NULL_AI_value = new NullAI();
        }
        return NullAIFactory.NULL_AI_value;
    }
    

    public function getInstance3(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput):ArtificialIntelligenceInterface {
        return NullAIFactory.NULL_AI;
    }
    

    public static function getInstance():ArtificialIntelligenceInterface {
        return NullAIFactory.NULL_AI;
    }
    }
}

