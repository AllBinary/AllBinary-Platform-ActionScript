/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.animation.text {
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.AnimationInterfaceFactoryInterface;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.media.ScaleProperties;

    public class CustomTextAnimationFactory implements AnimationInterfaceFactoryInterface {
        public var logUtil:LogUtil = null;
        private var animationBehaviorFactory:AnimationBehaviorFactory = null;
        public var basicColor:BasicColor = null;
        private var text:String = null;
        private var initScaleHeight:int = 0;
        public var dx:int = 0;
        public var dy:int = 0;
        public var font:Font = null;
        public var scaleProperties:ScaleProperties = null;

        // Java field initializers run after the base constructor
        private function initFieldsCustomTextAnimationFactory():void {
    this.logUtil = LogUtil.getInstance();
    
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    
    this.dx = 0;
    this.dy = 0;
    
    
        }
    

    public static function createDXY(text:String, fontSize:int, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory):CustomTextAnimationFactory {
        var customTextAnimationFactory:CustomTextAnimationFactory = new CustomTextAnimationFactory(text, fontSize, animationBehaviorFactory);
        customTextAnimationFactory.dx = dx;
        customTextAnimationFactory.dy = dy;
        return customTextAnimationFactory;
    }
    

    public function CustomTextAnimationFactory(text:String, fontSize:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsCustomTextAnimationFactory();
        this.scaleProperties = new ScaleProperties();
        this.text = text;
        this.scaleProperties.scaleHeight = int(fontSize - (int(fontSize / 4)));
        this.initScaleHeight = this.scaleProperties.scaleHeight;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.initScaleHeight);
    }
    

    public function getInstance1(instanceId:int):Animation {
        var customTextAnimation:CustomTextAnimation = null;
        if (this.dx != 0 || this.dy != 0) {
            customTextAnimation = new AdjustCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            customTextAnimation = new CustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.animationBehaviorFactory.getOrCreateInstance());
        }
        customTextAnimation.setBasicColorP(this.basicColor);
        return customTextAnimation;
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    

    public function getWidth():int {
        return this.font.stringWidth(this.text);
    }
    

    public function getHeight():int {
        return this.font.getHeight();
    }
    }
}

