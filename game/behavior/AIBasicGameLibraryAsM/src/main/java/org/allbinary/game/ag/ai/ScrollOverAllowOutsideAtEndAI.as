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

    public class ScrollOverAllowOutsideAtEndAI extends BasicAI {
    

    public function ScrollOverAllowOutsideAtEndAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var x:int = ownerLayerInterface.getXP();
        var y:int = ownerLayerInterface.getYP();
        var width:int = ownerLayerInterface.getWidth();
        var height:int = ownerLayerInterface.getHeight();
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        if (x > displayInfo.getLastWidth()) {
            ownerLayerInterface.setPosition(-width, y, ownerLayerInterface.getZP());
        }
        if (y > displayInfo.getLastHeight()) {
            ownerLayerInterface.setPosition(x, -height, ownerLayerInterface.getZP());
        }
        if (x < -width) {
            ownerLayerInterface.setPosition(int(displayInfo.getLastWidth() + width), y, ownerLayerInterface.getZP());
        }
        if (y < -height) {
            ownerLayerInterface.setPosition(x, int(displayInfo.getLastHeight() + height), ownerLayerInterface.getZP());
        }
    }
    }
}

