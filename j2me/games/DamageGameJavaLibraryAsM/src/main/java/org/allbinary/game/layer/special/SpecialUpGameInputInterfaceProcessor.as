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
package org.allbinary.game.layer.special {
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class SpecialUpGameInputInterfaceProcessor extends SpecialGameInputInterfaceProcessor {
    

    public function SpecialUpGameInputInterfaceProcessor(collidableDestroyableDamageableLayer:SpecialGameInputInterface) {
        super(collidableDestroyableDamageableLayer);
    }
    

    override public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
        this.specialGameInputInterface.up();
    }
    }
}

