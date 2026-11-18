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
package org.allbinary.math {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.math.MathUtil;

    public class LayerDistanceUtil {
    private static var instance_value:LayerDistanceUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LayerDistanceUtil {
        if (!LayerDistanceUtil.instance_set) {
            LayerDistanceUtil.instance_set = true;
            LayerDistanceUtil.instance_value = new LayerDistanceUtil();
        }
        return LayerDistanceUtil.instance_value;
    }
        private var mathUtil:MathUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerDistanceUtil():void {
    this.mathUtil = MathUtil.getInstance();
        }

        public function LayerDistanceUtil() {
            super();
            this.initFieldsLayerDistanceUtil();
        }
    

    public static function getInstance():LayerDistanceUtil {
        return LayerDistanceUtil.instance;
    }
    

    public function getDistance(layerInterface:AllBinaryLayer, layerInterface2:AllBinaryLayer):int {
        var dx:int = int((int(layerInterface.getXP() + layerInterface.getHalfWidth())) - (int(layerInterface2.getXP() + layerInterface2.getHalfWidth())));
        var dy:int = int((int(layerInterface.getYP() + layerInterface.getHalfHeight())) - (int(layerInterface2.getYP() + layerInterface2.getHalfHeight())));
        return this.mathUtil.sqrt(int((int(dx * dx)) + (int(dy * dy))));
    }
    

    public function getDistance3D(layerInterface:AllBinaryLayer, layerInterface2:AllBinaryLayer):int {
        var dx:int = int((int(layerInterface.getXP() + layerInterface.getHalfWidth())) - (int(layerInterface2.getXP() + layerInterface2.getHalfWidth())));
        var dy:int = int((int(layerInterface.getYP() + layerInterface.getHalfHeight())) - (int(layerInterface2.getYP() + layerInterface2.getHalfHeight())));
        var dz:int = int((int(layerInterface.getZP() + layerInterface.getHalfDepth())) - (int(layerInterface2.getZP() + layerInterface2.getHalfDepth())));
        return this.mathUtil.sqrt(int(int((int(dx * dx)) + (int(dy * dy))) + (int(dz * dz))));
    }
    

    public function getDistanceAt(layerInterface:AllBinaryLayer, point:GPoint):int {
        var dx:int = int(layerInterface.getXP() - point.getX());
        var dy:int = int(layerInterface.getYP() - point.getY());
        return this.mathUtil.sqrt(int((int(dx * dx)) + (int(dy * dy))));
    }
    }
}

