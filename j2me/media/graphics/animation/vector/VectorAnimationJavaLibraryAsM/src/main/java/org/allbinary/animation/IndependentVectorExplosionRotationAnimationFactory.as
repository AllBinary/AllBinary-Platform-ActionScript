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
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.vector.VectorInfo;

    public class IndependentVectorExplosionRotationAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
        private var framePoints:Vector.<Vector.<Vector.<int>>> = null;
        private var vectorInfo:VectorInfo = null;
        private var basicColor:BasicColor = null;
        private var vectorAnimationFactoryInterface:VectorAnimationFactoryInterface = null;
        private var vectorExplosionGenerator:VectorExplosionGenerator = null;

        // Java field initializers run after the base constructor
        private function initFieldsIndependentVectorExplosionRotationAnimationFactory():void {
    this.framePoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    
    
    
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance();
        }
    

    public function IndependentVectorExplosionRotationAnimationFactory(vectorInfo:VectorInfo, basicColor:BasicColor, vectorAnimationFactoryInterface:VectorAnimationFactoryInterface) {
        super();
        this.initFieldsIndependentVectorExplosionRotationAnimationFactory();
        this.vectorInfo = vectorInfo;
        this.basicColor = basicColor;
        this.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface;
        this.init();
    }
    

    public function init(...args):void {
        if (args.length == 0) {
            this.init_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo0():void {
        this.framePoints = VectorRotationGenerator.getInstance().getInstance1(this.vectorInfo);
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        var frame:int = 0;
        if (animationInterface != null) {
            var rotationAnimationInterface:IndexedAnimation = (animationInterface as IndexedAnimation);
            frame = rotationAnimationInterface.getFrame();
        }
        var points:Vector.<Vector.<Vector.<int>>> = this.vectorExplosionGenerator.getInstance3(this.framePoints[frame], 6, this.vectorExplosionGenerator.ROTATION);
        return this.vectorAnimationFactoryInterface.getInstance2(points, this.basicColor);
    }
    }
}

