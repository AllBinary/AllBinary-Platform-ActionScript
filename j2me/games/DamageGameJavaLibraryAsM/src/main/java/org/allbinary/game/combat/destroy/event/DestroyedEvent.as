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
package org.allbinary.game.combat.destroy.event {
    import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas;
    import org.allbinary.game.displayable.canvas.NullGameCanvas;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class DestroyedEvent extends AllBinaryEventObject {
        private var allBinaryGameCanvas:AllBinaryGameCanvas = null;
        private var allBinaryLayerInterface:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsDestroyedEvent():void {
    this.allBinaryGameCanvas = NullGameCanvas.getInstance();
    this.allBinaryLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
        }
    

    public function DestroyedEvent(combatGameCanvas:AllBinaryGameCanvas) {
        super(DestroyedEventHandler.getInstance());
        this.initFieldsDestroyedEvent();
        this.setAllBinaryGameCanvas(combatGameCanvas);
    }
    

    public function getAllBinaryGameCanvas():AllBinaryGameCanvas {
        return this.allBinaryGameCanvas;
    }
    

    public function getLayerInterface():AllBinaryLayer {
        return this.allBinaryLayerInterface;
    }
    

    private function setAllBinaryGameCanvas(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    public function setLayerInterfaceForCircularStaticPool(allBinaryLayerInterface:AllBinaryLayer):void {
        this.allBinaryLayerInterface = allBinaryLayerInterface;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("DestroyedEvent: \n");
        stringBuffer.append("AllBinaryLayerInterface: ");
        stringBuffer.append(this.allBinaryLayerInterface.toString());
        stringBuffer.append("\nAllBinaryGameCanvas: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getAllBinaryGameCanvas()));
        return stringBuffer.toString();
    }
    }
}

