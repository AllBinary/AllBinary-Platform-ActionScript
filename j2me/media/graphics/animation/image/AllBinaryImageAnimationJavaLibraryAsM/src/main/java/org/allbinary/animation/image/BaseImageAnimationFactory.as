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
    import javax.microedition.lcdui.Image;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.AnimationInterfaceFactoryInterface;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.image.AnimationFactoryImageScaleUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.media.ScaleProperties;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;

    public class BaseImageAnimationFactory implements AnimationInterfaceFactoryInterface {
        public var animationFactoryImageScaleUtil:AnimationFactoryImageScaleUtil = null;
        private var image:Image = null;
        public var animationBehaviorFactory:AnimationBehaviorFactory = null;
        private var sequenceArray:Vector.<int> = null;
        public var animationFactoryInitializationVisitor:AnimationFactoryInitializationVisitor = null;
        public var scaleProperties:ScaleProperties = null;

        // Java field initializers run after the base constructor
        private function initFieldsBaseImageAnimationFactory():void {
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance();
    
    
    
    
    this.scaleProperties = ScaleProperties.instance;
        }
    

    public static function createFactoryBase(image:Image, sequenceArray:Vector.<int>, width:int, height:int, animationBehaviorFactory:AnimationBehaviorFactory):BaseImageAnimationFactory {
        return new BaseImageAnimationFactory(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory);
    }
    

    public function BaseImageAnimationFactory(image:Image, sequenceArray:Vector.<int>, width:int, height:int, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsBaseImageAnimationFactory();
        this.animationFactoryInitializationVisitor = new AnimationFactoryInitializationVisitor();
        this.image = image;
        this.animationFactoryInitializationVisitor.width = width;
        this.animationFactoryInitializationVisitor.height = height;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.sequenceArray = sequenceArray;
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    public function getInstance1(instanceId:int):Animation {
        return NullAnimationFactory.getFactoryInstance().getInstance1(instanceId);
    }
    

    public function getImage():Image {
        return this.image;
    }
    

    public function getSequenceArray():Vector.<int> {
        return this.sequenceArray;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
        this.scaleProperties = scaleProperties;
        if (this.scaleProperties.shouldScale) {
            this.scaleProperties.scaleWidth = JMath.toInt32((Number(this.animationFactoryInitializationVisitor.width) * this.scaleProperties.scaleX));
            this.scaleProperties.scaleHeight = JMath.toInt32((Number(this.animationFactoryInitializationVisitor.height) * this.scaleProperties.scaleY));
        } else {
        }
    }
    

    public function getAnimationFactoryInitializationVisitorP():AnimationFactoryInitializationVisitor {
        return this.animationFactoryInitializationVisitor;
    }
    

    public function getScalePropertiesP():ScaleProperties {
        return this.scaleProperties;
    }
    

    public function toString():String {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var commonLabels:CommonLabels = CommonLabels.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(JSystem.objectToString(this));
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.image.getHeight());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(this.animationFactoryInitializationVisitor.toString());
        return stringBuffer.toString();
    }
    }
}

