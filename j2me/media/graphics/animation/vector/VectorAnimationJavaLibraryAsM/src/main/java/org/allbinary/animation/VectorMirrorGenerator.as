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
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.pipeline.BasicGraphicsPipeline;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListS;

    public class VectorMirrorGenerator {
    private static var instance_value:VectorMirrorGenerator;
    private static var instance_set:Boolean = false;
    private static function get instance():VectorMirrorGenerator {
        if (!VectorMirrorGenerator.instance_set) {
            VectorMirrorGenerator.instance_set = true;
            VectorMirrorGenerator.instance_value = new VectorMirrorGenerator();
        }
        return VectorMirrorGenerator.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var vectorAnimationUtil:VectorAnimationUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsVectorMirrorGenerator():void {
    this.logUtil = LogUtil.getInstance();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
        }
    

    public static function getInstance():VectorMirrorGenerator {
        return VectorMirrorGenerator.instance;
    }
    

    public function VectorMirrorGenerator() {
        super();
        this.initFieldsVectorMirrorGenerator();
    }
    

    public function getInstance2(...args):* {
        if (args.length == 2 && args[0] is Vector.<Vector.<Vector.<int>>> && args[1] is int) {
            return this.getInstance_jo2_1(args[0], args[1]);
        }
        if (args.length == 2) {
            return this.getInstance_jo2_2(args[0], args[1]);
        }
        throw new JException("IllegalArgumentException", "getInstance");
    }

    private function getInstance_jo2_1(points:Vector.<Vector.<Vector.<int>>>, width:int):Vector.<Vector.<Vector.<int>>> {
        try {
            var pointFactory:PointFactory = PointFactory.getInstance();
            var pointBasicArrayList:BasicArrayList = null;
            var nextPoints:Vector.<Vector.<int>> = null;
            var size2:int = 0;
            var size:int = points.length;
            var pointsBasicArrayList:BasicArrayList = new BasicArrayListS(size);
            for (var frame:int = 0; frame < size; frame++) {
                nextPoints = points[frame];
                size2 = nextPoints.length;
                pointBasicArrayList = new BasicArrayListS(size2);
                for (var index:int = 0; index < size2; index++) {
                    pointBasicArrayList.add(pointFactory.createXY(nextPoints[index][0], nextPoints[index][1]));
                }
                pointsBasicArrayList.add(pointBasicArrayList);
            }
            for (index = 0; index < points.length; index++) {
                pointsBasicArrayList.add(this.getInstance2((pointsBasicArrayList.objectArray[index] as BasicArrayList), width));
            }
            var newPoints:Vector.<Vector.<Vector.<int>>> = this.vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList);
            return newPoints;
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
        }
    }

    private function getInstance_jo2_2(pointBasicArrayList:BasicArrayList, width:int):BasicArrayList {
        var graphicsPipe:BasicGraphicsPipeline = new BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.mirror(width);
        return graphicsPipe.getMatrix();
    }
    
    }
}

