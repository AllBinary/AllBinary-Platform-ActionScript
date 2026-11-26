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
package org.allbinary.game.displayable.canvas {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.AndroidUtil;
    import org.allbinary.J2MEUtil;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.animation.vector.RectangleFilledAnimation;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.layer.SWTUtil;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.graphics.draw.DrawVerticalStringUtil;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureUtil;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.threed.SWTJOGLProcessor;

    public class BasicPopupMenuPaintable extends Paintable implements UpdateMyFontInterface {
    private static const NAME:String = "MENU";
        public var basicSetColorUtil:BasicColorSetUtil = null;
        private var drawStringUtil:DrawVerticalStringUtil = null;
        private var label:String = null;
        private var foregroundBasicColor:BasicColor = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var rectangle:Rectangle = null;
        private var BORDER:int = 0;
        private var heightOffset:int = 0;
        private var offset:int = 0;
        private var animationInterface:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicPopupMenuPaintable():void {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.drawStringUtil = DrawVerticalStringUtil.getInstance();
    
    
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    
    this.BORDER = 0;
    this.heightOffset = 0;
    this.offset = 0;
    this.animationInterface = null;
        }
    

    public function BasicPopupMenuPaintable(rectangle:Rectangle, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super();
        this.initFieldsBasicPopupMenuPaintable();
        this.foregroundBasicColor = foregroundBasicColor;
        this.label = BasicPopupMenuPaintable.NAME;
        this.rectangle = rectangle;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        } else {
            this.animationInterface = new RectangleFilledAnimation(this.rectangle.getWidth(), this.rectangle.getHeight(), BasicColorFactory.getInstance().TRANSPARENT_GREY);
        }
        this.init(rectangle);
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        var features:Features = Features.getInstance();
        var isOpenGL:Boolean = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL);
        this.drawStringUtil.updateMeasurement(graphics, this.label);
        var BORDER:int = 0;
        if (J2MEUtil.isHTML() || isOpenGL) {
            BORDER = int(MyFontProcessor.defaultCharWidth(font) / 2);
        } else if (AndroidUtil.isAndroid() || J2MEUtil.isJ2SE() || SWTUtil.isSWT) {
            BORDER = MyFontProcessor.defaultCharWidth(font);
        } else {
            BORDER = int(MyFontProcessor.defaultCharWidth(font) * 2);
        }
        this.BORDER = BORDER;
        this.heightOffset = int(this.rectangle.getHeight() - (int(font.getHeight() * BasicPopupMenuPaintable.NAME.length)));
        if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            this.heightOffset -= int(font.getHeight() + 2);
            if (AndroidUtil.isAndroid()) {
                this.heightOffset = font.getHeight();
            } else {
                this.heightOffset -= int(font.getHeight() + 2);
            }
        }
        this.offset = int((this.heightOffset >> 1) + ((SWTJOGLProcessor.getInstance().isJOGL() ? 4 : 0)));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function init(...args):void {
        if (args.length == 1) {
            this.init_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo1(rectangle:Rectangle):void {
        this.rectangle = rectangle;
        var width:int = this.rectangle.getWidth();
        var height:int = this.rectangle.getHeight();
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            var rectangleFilledAnimation:RectangleFilledAnimation = (this.animationInterface as RectangleFilledAnimation);
            rectangleFilledAnimation.setWidth(width);
            rectangleFilledAnimation.setHeight(height);
        }
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var point:GPoint = this.rectangle.getPoint();
        var x:int = point.getX();
        var y:int = point.getY();
        var width:int = this.rectangle.getWidth();
        var height:int = this.rectangle.getHeight();
        this.animationInterface.paintXY(graphics, x, y);
        this.basicSetColorUtil.setBasicColorP(graphics, this.foregroundBasicColor);
        this.drawStringUtil.paintVerticle(graphics, this.label, int(x + this.BORDER), int(y + this.offset), 0);
        graphics.drawRect(x, y, width, height);
    }
    }
}

