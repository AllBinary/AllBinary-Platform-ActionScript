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
package org.allbinary.ai {
    import org.allbinary.layer.AllBinaryLayerManager;

    public class ArtificialIntelligence implements ArtificialIntelligenceInterface {
    public static const AI_ID:int = 2;
    private static var instance_value:ArtificialIntelligence;
    private static var instance_set:Boolean = false;
    private static function get instance():ArtificialIntelligence {
        if (!ArtificialIntelligence.instance_set) {
            ArtificialIntelligence.instance_set = true;
            ArtificialIntelligence.instance_value = new ArtificialIntelligence();
        }
        return ArtificialIntelligence.instance_value;
    }
    

    public static function getInstance():ArtificialIntelligence {
        return ArtificialIntelligence.instance;
    }
    

    public function ArtificialIntelligence() {
        super();
    }
    

    public function processAI(layerManager:AllBinaryLayerManager):void {
    }
    

    public function getId():int {
        return 1;
    }
    }
}

