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
package org.allbinary.game.ag.ai.scroller {
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.identification.BasicGroupFactory;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.layer.identification.GroupLayerManagerListener;
    import org.allbinary.game.layer.weapon.WeaponLayer;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.math.MathUtil;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JInteger;

    public class FlockingAI extends BasicAI {
        private var allowedDistance:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsFlockingAI():void {
    
        }
    

    public function FlockingAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsFlockingAI();
        var allowedDistance:* = (hashtable.get_(BasePatrolAI.MAX_DISTANCE) as *);
        this.allowedDistance = allowedDistance.intValue();
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var maxDistance:int = 0;
        var farAllbinaryLayer:AllBinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
        var groupLayerManagerListener:GroupLayerManagerListener = GroupLayerManagerListener.getInstance();
        var list:BasicArrayList = groupLayerManagerListener.getList(BasicGroupFactory.getInstance().ENEMY);
        var size:int = list.size();
        var allBinaryLayer:AllBinaryLayer = null;
        var ownerLayerInterface:AllBinaryLayer = null;
        for (var index:int = 0; index < size; index++) {
            allBinaryLayer = (list.get_(index) as AllBinaryLayer);
            if (allBinaryLayer.getType() != WeaponLayer.getStaticType()) {
                var distance:int = this.getXYDistance(allBinaryLayer);
                if (distance > maxDistance) {
                    maxDistance = distance;
                    farAllbinaryLayer = allBinaryLayer;
                    if (distance > this.allowedDistance) {
                        break;
                    }
                }
            }
        }
        if (maxDistance > this.allowedDistance) {
            if (farAllbinaryLayer != AllBinaryLayer.NULL_ALLBINARY_LAYER) {
                ownerLayerInterface = this.getOwnerLayerInterface();
                if (farAllbinaryLayer.getXP() < ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas.LEFT);
                } else if (farAllbinaryLayer.getXP() > ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas.RIGHT);
                } else if (farAllbinaryLayer.getYP() > ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas.UP);
                } else if (farAllbinaryLayer.getYP() < ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas.DOWN);
                }
            }
        }
    }
    

    private function getXYDistance(allBinaryLayer:AllBinaryLayer):int {
        var ownerLayerInterface:AllBinaryLayer = this.getOwnerLayerInterface();
        var xTotalDistance:int = int((int(allBinaryLayer.getXP() + allBinaryLayer.getHalfWidth())) - (int(ownerLayerInterface.getXP() + ownerLayerInterface.getHalfWidth())));
        var yTotalDistance:int = int((int(allBinaryLayer.getYP() + allBinaryLayer.getHalfHeight())) - (int(ownerLayerInterface.getYP() + ownerLayerInterface.getHalfHeight())));
        var mathUtil:MathUtil = MathUtil.getInstance();
        var totalDistance:int = int(mathUtil.abs(xTotalDistance) + mathUtil.abs(yTotalDistance));
        return totalDistance;
    }
    }
}

