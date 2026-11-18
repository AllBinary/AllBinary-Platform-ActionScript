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
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListS;
    import org.allbinary.vector.VectorInfo;

    public class VectorRotationGenerator {
    private static var instance_value:VectorRotationGenerator;
    private static var instance_set:Boolean = false;
    private static function get instance():VectorRotationGenerator {
        if (!VectorRotationGenerator.instance_set) {
            VectorRotationGenerator.instance_set = true;
            VectorRotationGenerator.instance_value = new VectorRotationGenerator();
        }
        return VectorRotationGenerator.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var vectorAnimationUtil:VectorAnimationUtil = null;
        private var angleFactory:AngleFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsVectorRotationGenerator():void {
    this.logUtil = LogUtil.getInstance();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    this.angleFactory = AngleFactory.getInstance();
        }
    

    public static function getInstance():VectorRotationGenerator {
        return VectorRotationGenerator.instance;
    }
    

    public function VectorRotationGenerator() {
        super();
        this.initFieldsVectorRotationGenerator();
    }
    

    public function getInstance1(vectorRotationInfo:VectorInfo):Vector.<Vector.<Vector.<int>>> {
        return this.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames());
    }
    

    public function getInstanceFrames(width:int, height:int, points:Vector.<Vector.<int>>, frames:int):Vector.<Vector.<Vector.<int>>> {
        try {
            var totalAngle:int = this.angleFactory.TOTAL_ANGLE;
            var angleIncrement:int = int(totalAngle / frames);
            var pointsBasicArrayList:BasicArrayList = new BasicArrayListS(int(totalAngle / angleIncrement));
            var pointBasicArrayList:BasicArrayList = new BasicArrayListS(points.length);
            var pointFactory:PointFactory = PointFactory.getInstance();
            var size:int = points.length;
            for (var index:int = 0; index < size; index++) {
                pointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]));
            }
            index = 0;
            while (index < totalAngle) {
                pointsBasicArrayList.add(this.getListAtAngle(width, height, pointBasicArrayList, this.angleFactory.getAt(index)));
                index += angleIncrement;
            }
            var newPoints:Vector.<Vector.<Vector.<int>>> = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size());
            return newPoints;
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
        }
    }
    

    public function getListAtAngle(width:int, height:int, pointBasicArrayList:BasicArrayList, angle:Angle):BasicArrayList {
        var graphicsPipe:BasicGraphicsPipeline = new BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(-(width >> 1), -(height >> 1));
        graphicsPipe.rotateToAngle(angle);
        graphicsPipe.translate((width >> 1), (height >> 1));
        return graphicsPipe.getMatrix();
    }
    }
}

