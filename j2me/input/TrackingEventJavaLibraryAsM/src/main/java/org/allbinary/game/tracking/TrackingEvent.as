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
package org.allbinary.game.tracking {
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class TrackingEvent extends AllBinaryEventObject {
        private var layerInterface:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsTrackingEvent():void {
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
        }
    

    public function TrackingEvent(allBinaryLayerInterface:Object) {
        super(allBinaryLayerInterface);
        this.initFieldsTrackingEvent();
        if (allBinaryLayerInterface != TrackingEventHandler.getInstance()) {
            this.setLayerInterface((allBinaryLayerInterface as AllBinaryLayer));
        }
    }
    

    public function init(anyType:Object):void {
        this.setSource(anyType);
    }
    

    public function getLayerInterface():AllBinaryLayer {
        return this.layerInterface;
    }
    

    private function setLayerInterface(layerInterface:AllBinaryLayer):void {
        this.layerInterface = layerInterface;
    }
    

    public function setLayerInterfaceForCircularStaticPool(layerInterface:AllBinaryLayer):void {
        this.layerInterface = layerInterface;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("TrackingEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.layerInterface.toString());
        return stringBuffer.toString();
    }
    }
}

