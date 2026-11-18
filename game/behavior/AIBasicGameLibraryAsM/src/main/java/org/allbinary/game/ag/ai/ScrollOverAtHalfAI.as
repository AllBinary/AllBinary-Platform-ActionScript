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

    public class ScrollOverAtHalfAI extends BasicAI {
    

    public function ScrollOverAtHalfAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var x:int = ownerLayerInterface.getXP();
        var y:int = ownerLayerInterface.getYP();
        var halfWidth:int = ownerLayerInterface.getHalfWidth();
        var halfHeight:int = ownerLayerInterface.getHalfHeight();
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        if (x > int(displayInfo.getLastWidth() - halfWidth)) {
            ownerLayerInterface.setPosition(int(halfWidth + 1), y, ownerLayerInterface.getZP());
        }
        if (y > int(displayInfo.getLastHeight() - halfHeight)) {
            ownerLayerInterface.setPosition(x, int(halfHeight + 1), ownerLayerInterface.getZP());
        }
        if (x < -halfWidth) {
            ownerLayerInterface.setPosition(int(displayInfo.getLastWidth() - halfWidth), y, ownerLayerInterface.getZP());
        }
        if (y < -halfHeight) {
            ownerLayerInterface.setPosition(x, int(displayInfo.getLastHeight() - halfHeight), ownerLayerInterface.getZP());
        }
    }
    }
}

