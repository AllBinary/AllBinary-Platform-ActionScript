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
    import org.allbinary.game.input.analog.AnalogLocationInputFactory;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.util.BasicArrayList;

    public class AllAnalogControllerVisitor extends AnalogControllerVisitor {
    

    override public function process(allbinaryLayerManager:AllBinaryLayerManager, analogLocationInputProcessor:AnalogLocationInputProcessor):void {
        var analogLocationInputList:BasicArrayList = AnalogLocationInputFactory.getInstance().getList();
        var analogLocationInput:AnalogLocationInput = null;
        for (var index:int = int(analogLocationInputList.size() - 1); index >= 0; index--) {
            analogLocationInput = (analogLocationInputList.get_(index) as AnalogLocationInput);
            analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput);
        }
    }
    }
}

