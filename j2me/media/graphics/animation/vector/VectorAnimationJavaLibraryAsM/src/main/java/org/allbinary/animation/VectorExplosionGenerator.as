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
package org.allbinary.animation {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.pipeline.RandomRotationFactory;
    import org.allbinary.graphics.pipeline.RandomTranslation;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListS;

    public class VectorExplosionGenerator {
    private static var instance_value:VectorExplosionGenerator;
    private static var instance_set:Boolean = false;
    private static function get instance():VectorExplosionGenerator {
        if (!VectorExplosionGenerator.instance_set) {
            VectorExplosionGenerator.instance_set = true;
            VectorExplosionGenerator.instance_value = new VectorExplosionGenerator();
        }
        return VectorExplosionGenerator.instance_value;
    }
        public var RANDOM:VectorExplosionType = null;
        public var ROTATION:VectorExplosionType = null;
        private var vectorAnimationUtil:VectorAnimationUtil = null;
        private var randomRotationFactory:RandomRotationFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsVectorExplosionGenerator():void {
    this.RANDOM = new VectorExplosionType();
    this.ROTATION = new VectorExplosionType();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    this.randomRotationFactory = RandomRotationFactory.getInstance();
        }
    

    public static function getInstance():VectorExplosionGenerator {
        return VectorExplosionGenerator.instance;
    }
    

    public function VectorExplosionGenerator() {
        super();
        this.initFieldsVectorExplosionGenerator();
    }
    

    public function createList(list:BasicArrayList, howMuch:int, type:VectorExplosionType):BasicArrayList {
        var point:GPoint = null;
        var size:int = list.size();
        var points:Vector.<Vector.<int>> = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(size); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })();
        for (var index:int = 0; index < size; index++) {
            point = (list.objectArray[index] as GPoint);
            points[index][0] = point.getX();
            points[index][1] = point.getY();
        }
        return this.createListFromPoints(list, points, howMuch, type);
    }
    

    public function getInstance3(points:Vector.<Vector.<int>>, howMuch:int, type:VectorExplosionType):Vector.<Vector.<Vector.<int>>> {
        var pointsBasicArrayList:BasicArrayList = this.getInstanceStartFrame(points, howMuch, type, true);
        var tempBasicArrayList:BasicArrayList = (pointsBasicArrayList.objectArray[0] as BasicArrayList);
        var newPoints:Vector.<Vector.<Vector.<int>>> = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size());
        return newPoints;
    }
    

    public function getInstanceStartFrame(points:Vector.<Vector.<int>>, howMuch:int, type:VectorExplosionType, startFrame:Boolean):BasicArrayList {
        try {
            var pointsBasicArrayList:BasicArrayList = new BasicArrayListS(howMuch);
            pointsBasicArrayList.add(this.createPointsBasicArrayList(points));
            var frameIndex:int = 0;
            var tempBasicArrayList:BasicArrayList = null;
            var pointBasicArrayList:BasicArrayList = null;
            while (frameIndex < howMuch) {
                tempBasicArrayList = (pointsBasicArrayList.objectArray[frameIndex] as BasicArrayList);
                pointBasicArrayList = this.createListFromPoints(tempBasicArrayList, points, howMuch, type);
                pointsBasicArrayList.add(pointBasicArrayList);
                frameIndex++;
            }
            if (!startFrame) {
                pointsBasicArrayList.removeAt(0);
            }
            return pointsBasicArrayList;
        } catch (e:*) {
            throw e;
        }
    }
    

    private function createListFromPoints(tempBasicArrayList:BasicArrayList, points:Vector.<Vector.<int>>, howMuch:int, type:VectorExplosionType):BasicArrayList {
        var index:int = 0;
        var pointBasicArrayList:BasicArrayList = new BasicArrayListD();
        var sectionBasicArrayList:BasicArrayList = null;
        while (index < points.length) {
            sectionBasicArrayList = new BasicArrayListD();
            while (points[index][0] != 1000) {
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index]);
                index++;
                if (index >= points.length) {
                    break;
                }
            }
            sectionBasicArrayList = RandomTranslation.getInstance2(sectionBasicArrayList, howMuch);
            if (type === this.ROTATION) {
                sectionBasicArrayList = this.randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch);
            }
            var size:int = sectionBasicArrayList.size();
            for (var index2:int = 0; index2 < size; index2++) {
                pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2]);
            }
            if (index >= points.length) {
                break;
            } else if (points[index][0] == 1000) {
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index]);
                index++;
            }
        }
        return pointBasicArrayList;
    }
    

    private function createPointsBasicArrayList(points:Vector.<Vector.<int>>):BasicArrayList {
        if (points.length == 0) {
            throw new JException("Exception", "Not Points Provided");
        }
        var firstPointBasicArrayList:BasicArrayList = new BasicArrayListS(points.length);
        var pointFactory:PointFactory = PointFactory.getInstance();
        for (var index:int = 0; index < points.length; index++) {
            firstPointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]));
        }
        return firstPointBasicArrayList;
    }
    }
}

