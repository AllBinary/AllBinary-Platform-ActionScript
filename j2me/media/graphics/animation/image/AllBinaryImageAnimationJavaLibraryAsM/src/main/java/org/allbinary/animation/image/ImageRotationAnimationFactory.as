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
package org.allbinary.animation.image {
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;

    public class ImageRotationAnimationFactory extends BaseImageAnimationFactory {
        public var angleIncrement:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageRotationAnimationFactory():void {
    
        }
    

    public function ImageRotationAnimationFactory(image:Image, width:int, height:int, dx:int, dy:int, angleIncrement:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.initFieldsImageRotationAnimationFactory();
        this.angleIncrement = angleIncrement;
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    override public function getInstance1(instanceId:int):Animation {
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return new AdjustedImageBaseRotationAnimation(this.getImage(), AngleInfo.getInstance1(this.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new ImageBaseRotationAnimation(this.getImage(), AngleInfo.getInstance1(this.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public function getAngleIncrementP():int {
        return this.angleIncrement;
    }
    }
}

