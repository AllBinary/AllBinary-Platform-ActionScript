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
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class ScrollOverXImmediateYStopAI extends BasicAI {
    

    public function ScrollOverXImmediateYStopAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var x:int = ownerLayerInterface.getXP();
        var y:int = ownerLayerInterface.getYP();
        var x2:int = ownerLayerInterface.getX2();
        var y2:int = ownerLayerInterface.getY2();
        var width:int = ownerLayerInterface.getWidth();
        var height:int = ownerLayerInterface.getHeight();
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        if (x2 > displayInfo.getLastWidth()) {
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP());
        }
        if (y2 > displayInfo.getLastHeight()) {
            ownerLayerInterface.setPosition(x, int(displayInfo.getLastHeight() - height), ownerLayerInterface.getZP());
        }
        if (x < 0) {
            ownerLayerInterface.setPosition(int(displayInfo.getLastWidth() - width), y, ownerLayerInterface.getZP());
        }
        if (y < 0) {
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP());
        }
    }
    }
}

