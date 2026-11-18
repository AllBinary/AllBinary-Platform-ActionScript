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
package org.allbinary.game.layer {
    import java.util.JEnumeration;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.LayerInterfaceFactory;
    import org.allbinary.layer.LayerInterfaceVisitor;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.EnumerationUtil;

    public class LayerPlacer {
        private var enumerationUtil:EnumerationUtil = null;
        public var layerInterfaceVisitor:LayerInterfaceVisitor = null;
        private var dimension:GPoint = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerPlacer():void {
    this.enumerationUtil = EnumerationUtil.getInstance();
    
    
        }
    

    public function LayerPlacer(layerInterfaceVisitor:LayerInterfaceVisitor, dimension:GPoint) {
        super();
        this.initFieldsLayerPlacer();
        this.layerInterfaceVisitor = layerInterfaceVisitor;
        this.dimension = dimension;
    }
    

    public function processList(list:BasicArrayList):void {
        var size:int = list.size();
        var layerPlacementInterface:LayerPlacementInterface = null;
        for (var index:int = 0; index < size; index++) {
            layerPlacementInterface = (list.objectArray[index] as LayerPlacementInterface);
            this.process(layerPlacementInterface);
        }
    }
    

    public function process(layerPlacementInterface:LayerPlacementInterface):void {
        var relativePoint:GPoint = this.getPoint(layerPlacementInterface);
        var layerInterfaceFactory:LayerInterfaceFactory = LayerInterfaceFactory.getInstance();
        var hashtable:ABHashtable = layerPlacementInterface.getInstance();
        var enumeration:JEnumeration = hashtable.keys();
        var point:GPoint = null;
        var layerHashtable:ABHashtable = null;
        var x:int = 0;
        var y:int = 0;
        var z:int = 0;
        var layerInterface:AllBinaryLayer = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            point = (this.enumerationUtil.nextElement(enumeration) as GPoint);
            layerHashtable = (hashtable.get_(point) as ABHashtable);
            x = int(point.getX() + relativePoint.getX());
            y = int(point.getY() + relativePoint.getY());
            z = int(point.getZ() + relativePoint.getZ());
            layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z);
            this.layerInterfaceVisitor.visit(layerInterface);
        }
    }
    

    public function getPoint(layerPlacementInterface:LayerPlacementInterface):GPoint {
        var pointFactory:PointFactory = PointFactory.getInstance();
        var layerPlacementType:LayerPlacementType = layerPlacementInterface.getLayerType();
        if (layerPlacementType == LayerPlacementTypeFactory.getInstance().MAP) {
            width = layerPlacementInterface.getWidth();
            height = layerPlacementInterface.getHeight();
            x = (int((int(this.dimension.getX() - width)) / 2));
            y = (int((int(this.dimension.getY() - height)) / 2));
            return pointFactory.createXY(x, y);
        } else if (layerPlacementType == LayerPlacementTypeFactory.getInstance().UP) {
            var width:int = layerPlacementInterface.getWidth();
            var height:int = layerPlacementInterface.getHeight();
            var x:int = (int((int(this.dimension.getX() - width)) / 2));
            var y:int = -height;
            return pointFactory.createXY(x, y);
        } else {
            throw new JException("Exception", "PlacementType Not Recognized");
        }
    }
    }
}

