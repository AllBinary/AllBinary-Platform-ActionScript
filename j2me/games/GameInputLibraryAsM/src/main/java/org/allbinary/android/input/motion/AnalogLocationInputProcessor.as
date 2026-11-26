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
package org.allbinary.android.input.motion {
    import org.allbinary.game.input.analog.AnalogLocationInput;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class AnalogLocationInputProcessor {
    

    public function process(...args):void {
        if (args.length == 2) {
            this.process_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "process");
    }

    private function process_jo2(allbinaryLayerManager:AllBinaryLayerManager, analogLocationInput:AnalogLocationInput):void {
    }
    }
}

