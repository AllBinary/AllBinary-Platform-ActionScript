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
package org.allbinary.game.input {

    public class GameInputProcessorUtil {
    

    public static function init(inputProcessorArray:Vector.<GameInputProcessor>):void {
        var noInputProcessor:GameInputProcessor = GameInputProcessor.getInstance();
        var total:int = InputFactory.getInstance().MAX;
        for (var index:int = 0; index < total; index++) {
            var inputProcessorCanBeNull:GameInputProcessor = inputProcessorArray[index];
            if (inputProcessorCanBeNull == null) {
                inputProcessorArray[index] = noInputProcessor;
            }
        }
    }
    }
}

