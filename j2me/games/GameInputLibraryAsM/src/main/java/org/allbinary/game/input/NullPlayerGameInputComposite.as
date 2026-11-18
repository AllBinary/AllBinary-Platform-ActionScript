/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.game.input {
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.string.StringUtil;

    public class NullPlayerGameInputComposite implements PlayerGameInputCompositeInterface {
    private static var NULL_PLAYER_GAME_INPUT_COMPOSITE_value:NullPlayerGameInputComposite;
    private static var NULL_PLAYER_GAME_INPUT_COMPOSITE_set:Boolean = false;
    public static function get NULL_PLAYER_GAME_INPUT_COMPOSITE():NullPlayerGameInputComposite {
        if (!NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE_set) {
            NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE_set = true;
            NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE_value = new NullPlayerGameInputComposite();
        }
        return NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE_value;
    }
    

    public function getName():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function processInput(layerManager:AllBinaryLayerManager):void {
    }
    

    public function initInputProcessors():void {
    }
    

    public function getPlayerGameInput():PlayerGameInput {
        return NoPlayerGameInput.getInstance();
    }
    }
}

